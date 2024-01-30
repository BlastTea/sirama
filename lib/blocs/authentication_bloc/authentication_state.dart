part of '../blocs.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.focusNodeUsernameSignIn,
    required this.focusNodePasswordSignIn,
    required this.textControllerUsernameSignIn,
    required this.textControllerPasswordSignIn,
    required this.isSingingIn,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
  });

  final FocusNode focusNodeUsernameSignIn;
  final FocusNode focusNodePasswordSignIn;

  final TextEditingController textControllerUsernameSignIn;
  final TextEditingController textControllerPasswordSignIn;

  final bool isSingingIn;

  final UserRole role;

  final DateTime dateOfBirth;

  final Gender gender;
}
