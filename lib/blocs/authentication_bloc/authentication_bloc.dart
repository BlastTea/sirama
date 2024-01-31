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

    on<SignUpPressed>((event, emit) {
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
        case UserRole.orangTua:
        case UserRole.tenagaAhli:
        case UserRole.kaderKesehatan:
        case UserRole.guru:
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

        ApiHelper.post(
          '/api/register',
          body: {
            'username': _textControllerUsernameSignUp.text.trim(),
            'email': _textControllerEmailSignUp.text.trim(),
            'password': _textControllerPasswordSignUp.text.trim(),
            'role': _role.serverValue,
            'nama': _textControllerNameSignUp.text.trim(),
            'no_hp': _textControllerPhoneNumberSignUp.text.trim(),
            if (_role == UserRole.remaja) 'tgl_lahir': '${_dateOfBirth.year}-${_dateOfBirth.month}-${_dateOfBirth.day}',
            if (_role == UserRole.remaja) 'jenis_kelamin': _gender.serverValue,
            if (_role == UserRole.remaja) 'sekolah': _textControllerSchoolSignUp.text.trim(),
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

  static bool _isSigningIn = false;

  static UserRole _role = UserRole.values.first;

  static DateTime _dateOfBirth = DateTime.now();

  static Gender _gender = Gender.values.first;

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
        isSingingIn: _isSigningIn,
        role: _role,
        dateOfBirth: _dateOfBirth,
        gender: _gender,
        invalidSignUpTypes: _invalidSignUpTypes,
      );
}
