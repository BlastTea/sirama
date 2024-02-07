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
    required this.textControllerDescriptionSignUp,
    required this.isSingingIn,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
    required this.childSchoolLevel,
    required this.expertsType,
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
  final TextEditingController textControllerDescriptionSignUp;

  final bool isSingingIn;

  final UserRole role;

  final DateTime dateOfBirth;

  final Gender gender;

  final SchoolLevel childSchoolLevel;

  final ExpertsType expertsType;

  final List<InvalidType> invalidSignUpTypes;
}
