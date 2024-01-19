part of '../blocs.dart';

@immutable
abstract class AuthenticationEvent {}

class SetAuthenticationState extends AuthenticationEvent {
  SetAuthenticationState([this.state]);

  final AuthenticationState? state;
}

class SignInPressed extends AuthenticationEvent {}

class SignUpPressed extends AuthenticationEvent {}
