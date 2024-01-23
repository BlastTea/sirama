part of '../blocs.dart';

@immutable
abstract class AskTheExpertState {}

class AskTheExpertInitial extends AskTheExpertState {}

class AskTheExpertError extends AskTheExpertState {}

class AskTheExpertDataLoaded extends AskTheExpertState {}
