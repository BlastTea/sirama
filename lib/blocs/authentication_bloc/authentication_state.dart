part of '../blocs.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.textControllerUsernameSignIn,
    required this.textControllerPasswordSignIn,
    required this.isSingingIn,
  });

  final TextEditingController textControllerUsernameSignIn;
  final TextEditingController textControllerPasswordSignIn;

  final bool isSingingIn;
}
