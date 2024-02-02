part of '../blocs.dart';

class KontenBloc extends Bloc<KontenEvent, KontenState> {
  KontenBloc() : super(KontenInitial()) {
    on<SetKontenState>(
        (event, emit) => emit(event.state ?? _kontenDataLoaded));

    on<SetKontenToInitial>((event, emit) => emit(KontenInitial()));

    on<InitializeKontenData>((event, emit) async {
      try {
        _kontenList = await ApiHelper.get('/api/kontenterbaru').then(
            (value) => (value.data['data'] as List)
                .map((e) => Konten.fromJson(e))
                .toList());
      } catch (e) {
        emit(KontenError());
        return;
      }

      emit(_kontenDataLoaded);
    });
  }

  List<Konten> _kontenList = [];

  KontenDataLoaded get _kontenDataLoaded => KontenDataLoaded(
        kontens: _kontenList,
      );
}
