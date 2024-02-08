part of '../blocs.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(_authenticationDataLoaded) {
    on<SetAuthenticationState>((event, emit) => emit(event.state ?? _authenticationDataLoaded));

    on<SignInPressed>((event, emit) async {
      if (_textControllerUsernameSignIn.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Username masih kosong')));
        _focusNodeUsernameSignIn.requestFocus();
        return;
      } else if (_textControllerPasswordSignIn.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Password masih kosong')));
        _focusNodePasswordSignIn.requestFocus();
        return;
      }

      _isSigningIn = true;
      emit(_authenticationDataLoaded);

      try {
        await ApiHelper.signIn(
          username: _textControllerUsernameSignIn.text.trim(),
          password: _textControllerPasswordSignIn.text.trim(),
        );
      } catch (e) {
        _isSigningIn = false;
        emit(_authenticationDataLoaded);
        return;
      }

      _isSigningIn = false;
      emit(_authenticationDataLoaded);

      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ),
      );

      _textControllerUsernameSignIn.text = '';
      _textControllerPasswordSignIn.text = '';
    });

    on<SetSignUpRole>((event, emit) {
      _role = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SetSignUpDateOfBirth>((event, emit) {
      _dateOfBirth = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SetSignUpGender>((event, emit) {
      _gender = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SetSignupChildSchoolLevel>((event, emit) {
      _childSchoolLevel = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SetSignUpExpertsType>((event, emit) {
      _expertsType = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SignUpPressed>((event, emit) async {
      _invalidSignUpTypes.clear();
      if (_textControllerUsernameSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.usernameIsStillEmpty);
      if (_textControllerEmailSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.emailIsStillEmpty);
      if (_textControllerPasswordSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.passwordIsStillEmpty);
      if (_textControllerNameSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.nameIsStillEmpty);
      if (_textControllerPhoneNumberSignUp.text.trim().isEmpty) {
        _invalidSignUpTypes.add(InvalidType.phoneNumberIsStillEmpty);
      } else if (_textControllerPhoneNumberSignUp.text.trim().length < 10) {
        _invalidSignUpTypes.add(InvalidType.phoneNumberIsNotValid);
      }

      switch (_role) {
        case UserRole.remaja:
          if (_textControllerSchoolSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.schoolIsStillEmpty);
        case UserRole.tenagaAhli:
          if (_textControllerDescriptionSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.descriptionIsStillEmpty);
        case UserRole.kaderKesehatan:
          if (_textControllerAgeSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.ageIsStillEmpty);

          if (_textControllerBuiltAreaSignUp.text.trim().isEmpty) _invalidSignUpTypes.add(InvalidType.builtAreaIsStillEmpty);
        default:
        // Do nothing
      }

      if (_invalidSignUpTypes.isEmpty) _invalidSignUpTypes.add(InvalidType.none);

      if (_invalidSignUpTypes.first != InvalidType.none) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(SnackBar(content: Text(_invalidSignUpTypes.first.text)));
        emit(_authenticationDataLoaded);
        return;
      }

      try {
        FocusManager.instance.primaryFocus?.unfocus();

        showLoadingDialog();

        await ApiHelper.post(
          '/api/register',
          body: {
            'username': _textControllerUsernameSignUp.text.trim(),
            'email': _textControllerEmailSignUp.text.trim(),
            'password': _textControllerPasswordSignUp.text.trim(),
            'role': _role.serverValue,
            'nama': _textControllerNameSignUp.text.trim(),
            'no_hp': _textControllerPhoneNumberSignUp.text.trim(),
            if (_role == UserRole.remaja) ...{
              'tgl_lahir': '${_dateOfBirth.year}-${_dateOfBirth.month}-${_dateOfBirth.day}',
              'jenis_kelamin': _gender.serverValue,
              'sekolah': _textControllerSchoolSignUp.text.trim(),
            },
            if (_role == UserRole.orangTua) 'tingkat_sekolah_anak': _childSchoolLevel.serverValue,
            if (_role == UserRole.tenagaAhli) ...{
              'jenis_ahli': _expertsType.serverValue,
              'deskripsi_ahli': _textControllerDescriptionSignUp.text.trim(),
            },
            if (_role == UserRole.kaderKesehatan) ...{
              'usia': _textControllerAgeSignUp.number?.toInt(),
              'wilayah_binaan': _textControllerBuiltAreaSignUp.text.trim(),
            },
            if (_role == UserRole.guru) 'jenis_guru': 'BK',
          },
        );
      } catch (e) {
        NavigationHelper.back();
        return;
      }

      NavigationHelper.back();
      NavigationHelper.back();
      NavigationHelper.back();
      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Sign Up berhasil')));

      _isSigningIn = false;

      _textControllerUsernameSignUp.text = '';
      _textControllerEmailSignUp.text = '';
      _textControllerPasswordSignUp.text = '';
      _textControllerNameSignUp.text = '';
      _textControllerPhoneNumberSignUp.text = '';
      _textControllerSchoolSignUp.text = '';
      _textControllerDescriptionSignUp.text = '';

      _role = UserRole.values.first;

      _dateOfBirth = DateTime.now();

      _gender = Gender.values.first;

      _childSchoolLevel = SchoolLevel.smp;

      _expertsType = ExpertsType.values.first;

      emit(_authenticationDataLoaded);
    });
  }

  static final FocusNode _focusNodeUsernameSignIn = FocusNode();
  static final FocusNode _focusNodePasswordSignIn = FocusNode();
  static final FocusNode _focusNodeNameSignUp = FocusNode();

  static final TextEditingController _textControllerUsernameSignIn = TextEditingController();
  static final TextEditingController _textControllerPasswordSignIn = TextEditingController();
  static final TextEditingController _textControllerUsernameSignUp = TextEditingController();
  static final TextEditingController _textControllerEmailSignUp = TextEditingController();
  static final TextEditingController _textControllerPasswordSignUp = TextEditingController();
  static final TextEditingController _textControllerNameSignUp = TextEditingController();
  static final TextEditingController _textControllerPhoneNumberSignUp = TextEditingController();
  static final TextEditingController _textControllerSchoolSignUp = TextEditingController();
  static final TextEditingController _textControllerDescriptionSignUp = TextEditingController();
  static final TextEditingControllerThousandFormat _textControllerAgeSignUp = TextEditingControllerThousandFormat();
  static final TextEditingController _textControllerBuiltAreaSignUp = TextEditingController();

  static bool _isSigningIn = false;

  static UserRole _role = UserRole.values.first;

  static DateTime _dateOfBirth = DateTime.now();

  static Gender _gender = Gender.values.first;

  static SchoolLevel _childSchoolLevel = SchoolLevel.smp;

  static ExpertsType _expertsType = ExpertsType.values.first;

  static final List<InvalidType> _invalidSignUpTypes = [InvalidType.none];

  static AuthenticationDataLoaded get _authenticationDataLoaded => AuthenticationDataLoaded(
        focusNodeUsernameSignIn: _focusNodeUsernameSignIn,
        focusNodePasswordSignIn: _focusNodePasswordSignIn,
        focusNodeNameSignUp: _focusNodeNameSignUp,
        textControllerUsernameSignIn: _textControllerUsernameSignIn,
        textControllerPasswordSignIn: _textControllerPasswordSignIn,
        textControllerUsernameSignUp: _textControllerUsernameSignUp,
        textControllerEmailSignUp: _textControllerEmailSignUp,
        textControllerPasswordSignUp: _textControllerPasswordSignUp,
        textControllerNameSignUp: _textControllerNameSignUp,
        textControllerPhoneNumberSignUp: _textControllerPhoneNumberSignUp,
        textControllerSchoolSignUp: _textControllerSchoolSignUp,
        textControllerDescriptionSignUp: _textControllerDescriptionSignUp,
        textControllerAgeSignUp: _textControllerAgeSignUp,
        textControllerBuiltAreaSignUp: _textControllerBuiltAreaSignUp,
        isSingingIn: _isSigningIn,
        role: _role,
        dateOfBirth: _dateOfBirth,
        gender: _gender,
        childSchoolLevel: _childSchoolLevel,
        expertsType: _expertsType,
        invalidSignUpTypes: _invalidSignUpTypes,
      );
}
