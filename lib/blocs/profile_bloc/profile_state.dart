part of '../blocs.dart';

@immutable
abstract class ProfileState {}

class ProfileDataLoaded extends ProfileState {
  ProfileDataLoaded({
    required this.textControllerUsername,
    required this.textControllerEmail,
    required this.textControllerName,
    required this.textControllerPhoneNumber,
    required this.textControllerSchool,
    required this.textControllerDescription,
    required this.textControllerAge,
    required this.textControllerBuiltArea,
    required this.currentUser,
    required this.invalidTypes,
  });

  final TextEditingController textControllerUsername;
  final TextEditingController textControllerEmail;
  final TextEditingController textControllerName;
  final TextEditingController textControllerPhoneNumber;
  final TextEditingController textControllerSchool;
  final TextEditingController textControllerDescription;
  final TextEditingController textControllerAge;
  final TextEditingController textControllerBuiltArea;

  final User? currentUser;

  final List<InvalidType> invalidTypes;
}
