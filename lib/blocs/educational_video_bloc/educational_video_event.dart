part of '../blocs.dart';

@immutable
abstract class EducationalVideoEvent {}

class SetEducationalVideoState extends EducationalVideoEvent {
  SetEducationalVideoState([this.state]);

  final EducationalVideoState? state;
}

class SetEducationalVideoToInitial extends EducationalVideoEvent {}

class InitializeEducationalVideoData extends EducationalVideoEvent {}
