part of '../blocs.dart';

@immutable
abstract class AskTheExpertState {}

class AskTheExpertInitial extends AskTheExpertState {}

class AskTheExpertError extends AskTheExpertState {}

class AskTheExpertDataLoaded extends AskTheExpertState {
  AskTheExpertDataLoaded({
    required this.textControllerTopic,
    required this.textControllerQuestion,
    required this.topikPertanyaans,
    required this.tanyaAhlis,
    required this.selectedTopikPertanyaan,
    required this.selectedInputTopikPertanyaan,
  });

  final TextEditingController textControllerTopic;
  final TextEditingController textControllerQuestion;

  final List<TopikPertanyaan> topikPertanyaans;

  final List<List<TanyaAhli>> tanyaAhlis;

  final int selectedTopikPertanyaan;
  final int? selectedInputTopikPertanyaan;
}
