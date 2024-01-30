part of '../blocs.dart';

@immutable
abstract class QuoteState {}

class QuoteInitial extends QuoteState {}

class QuoteError extends QuoteState {}

class QuoteDataLoaded extends QuoteState {
  QuoteDataLoaded({
    required this.quotes,
  });

  final List<Quote> quotes;

  // final List<List<Quote>> QuotesLength;
}
