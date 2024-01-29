part of '../blocs.dart';

@immutable
abstract class QuoteEvent {}

class SetQuoteState extends QuoteEvent {
  SetQuoteState([this.state]);

  final QuoteState? state;
}

class SetQuoteToInitial extends QuoteEvent {}

class InitializeQuoteData extends QuoteEvent {}
