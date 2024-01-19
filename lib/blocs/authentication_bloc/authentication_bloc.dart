part of '../blocs.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(_authenticationDataLoaded) {
    on<SetAuthenticationState>((event, emit) => emit(event.state ?? _authenticationDataLoaded));

    on<SignInPressed>((event, emit) async {
      if (_textControllerUsernameSignIn.text.trim().isEmpty) {
        showErrorDialog('Username masih kosong');
        return;
      } else if (_textControllerPasswordSignIn.text.trim().isEmpty) {
        showErrorDialog('Password masih kosong');
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

    on<SignUpPressed>((event, emit) {});
  }

  static final TextEditingController _textControllerUsernameSignIn = TextEditingController();
  static final TextEditingController _textControllerPasswordSignIn = TextEditingController();

  static bool _isSigningIn = false;

  static AuthenticationDataLoaded get _authenticationDataLoaded => AuthenticationDataLoaded(
        textControllerUsernameSignIn: _textControllerUsernameSignIn,
        textControllerPasswordSignIn: _textControllerPasswordSignIn,
        isSingingIn: _isSigningIn,
      );
}
