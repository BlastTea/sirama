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

    on<SignUpPressed>((event, emit) {});
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
  static final TextEditingController _textControllerPhoneNumberSignup = TextEditingController();

  static bool _isSigningIn = false;

  static UserRole _role = UserRole.values.first;

  static DateTime _dateOfBirth = DateTime.now();

  static Gender _gender = Gender.values.first;

  static AuthenticationDataLoaded get _authenticationDataLoaded => AuthenticationDataLoaded(
        focusNodeUsernameSignIn: _focusNodeUsernameSignIn,
        focusNodePasswordSignIn: _focusNodePasswordSignIn,
        textControllerUsernameSignIn: _textControllerUsernameSignIn,
        textControllerPasswordSignIn: _textControllerPasswordSignIn,
        isSingingIn: _isSigningIn,
        role: _role,
        dateOfBirth: _dateOfBirth,
        gender: _gender,
      );
}
