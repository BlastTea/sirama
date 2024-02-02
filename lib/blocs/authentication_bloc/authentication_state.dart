part of '../blocs.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.focusNodeUsernameSignIn,
    required this.focusNodePasswordSignIn,
    required this.focusNodeNameSignUp,
    required this.textControllerUsernameSignIn,
    required this.textControllerPasswordSignIn,
    required this.textControllerUsernameSignUp,
    required this.textControllerEmailSignUp,
    required this.textControllerPasswordSignUp,
    required this.textControllerNameSignUp,
    required this.textControllerPhoneNumberSignUp,
    required this.textControllerSchoolSignUp,
    required this.isSingingIn,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
    required this.invalidSignUpTypes,
  });

  final FocusNode focusNodeUsernameSignIn;
  final FocusNode focusNodePasswordSignIn;
  final FocusNode focusNodeNameSignUp;

  final TextEditingController textControllerUsernameSignIn;
  final TextEditingController textControllerPasswordSignIn;
  final TextEditingController textControllerUsernameSignUp;
  final TextEditingController textControllerEmailSignUp;
  final TextEditingController textControllerPasswordSignUp;
  final TextEditingController textControllerNameSignUp;
  final TextEditingController textControllerPhoneNumberSignUp;
  final TextEditingController textControllerSchoolSignUp;

  final bool isSingingIn;

  final UserRole role;

  final DateTime dateOfBirth;

  final Gender gender;

  final List<InvalidType> invalidSignUpTypes;
}
