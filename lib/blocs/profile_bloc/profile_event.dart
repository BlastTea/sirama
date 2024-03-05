part of '../blocs.dart';

@immutable
abstract class ProfileEvent {}

class SetProfileState extends ProfileEvent {
  SetProfileState([this.state]);

  final ProfileState? state;
}

class InitializeProfileData extends ProfileEvent {}

class SetCurrentEditingProfile extends ProfileEvent {
  SetCurrentEditingProfile({required this.value});

  final User value;
}

class SaveEditingProfilePressed extends ProfileEvent {}
