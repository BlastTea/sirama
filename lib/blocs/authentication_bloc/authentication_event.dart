part of '../blocs.dart';

@immutable
abstract class AuthenticationEvent {}

class SetAuthenticationState extends AuthenticationEvent {
  SetAuthenticationState([this.state]);

  final AuthenticationState? state;
}

class SignInPressed extends AuthenticationEvent {}

class SetSignUpRole extends AuthenticationEvent {
  SetSignUpRole({required this.value});

  final UserRole value;
}

class SetSignUpDateOfBirth extends AuthenticationEvent {
  SetSignUpDateOfBirth({required this.value});

  final DateTime value;
}

class SetSignUpGender extends AuthenticationEvent {
  SetSignUpGender({required this.value});

  final Gender value;
}

class SignUpPressed extends AuthenticationEvent {}
