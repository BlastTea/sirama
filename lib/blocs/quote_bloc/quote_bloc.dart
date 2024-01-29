part of '../blocs.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<SetQuoteState>(
        (event, emit) => emit(event.state ?? _quoteDataLoaded));

    on<SetQuoteToInitial>((event, emit) => emit(QuoteInitial()));

    on<InitializeQuoteData>((event, emit) async {
      try {
        _quoteList = await ApiHelper.get('/api/quote').then(
            (value) => (value.data['data'] as List)
                .map((e) => Quote.fromJson(e))
                .toList());
      } catch (e) {
        emit(QuoteError());
        return;
      }

      emit(_quoteDataLoaded);
    });
  }

  List<Quote> _quoteList = [];

  QuoteDataLoaded get _quoteDataLoaded => QuoteDataLoaded(
        quotes: _quoteList,
      );
}
