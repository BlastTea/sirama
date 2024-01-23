part of '../blocs.dart';

@immutable
abstract class AskTheExpertState {}

class AskTheExpertInitial extends AskTheExpertState {}

class AskTheExpertError extends AskTheExpertState {}

class AskTheExpertDataLoaded extends AskTheExpertState {
  AskTheExpertDataLoaded({
    required this.pageController,
    required this.topikPertanyaans,
    required this.tanyaAhlis,
    required this.selectedTopikPertanyaan,
  });

  final PageController pageController;

  final List<TopikPertanyaan> topikPertanyaans;

  final List<TanyaAhli> tanyaAhlis;

  final int selectedTopikPertanyaan;
}
