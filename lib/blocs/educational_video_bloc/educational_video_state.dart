part of '../blocs.dart';

@immutable
abstract class EducationalVideoState {}

class EducationalVideoInitial extends EducationalVideoState {}

class EducationalVideoError extends EducationalVideoState {}

class EducationalVideoDataLoaded extends EducationalVideoState {}
