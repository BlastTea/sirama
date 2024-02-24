part of '../blocs.dart';

class SkrinningBloc extends Bloc<SkrinningEvent, SkrinningState> {
  SkrinningBloc() : super(SkrinningInitial()) {
    on<SetSkrinningState>(
        (event, emit) => emit(event.state ?? _skrinningDataLoaded));

    on<SetSkrinningToInitial>((event, emit) => emit(SkrinningInitial()));

    on<InitializeSkrinningData>((event, emit) async {
      try {
        skrinning = await ApiHelper.get('/api/skrinning').then((value) =>
            (value.data['data'] as List)
                .map((e) => Skrinning.fromJson(e))
                .toList());
        riwayatskrinning = await ApiHelper.get('/api/riwayatskrinning').then(
            (value) => (value.data['data'] as List)
                .map((e) => RiwayatSkrinning.fromJson(e))
                .toList());
      } catch (e) {
        emit(SkrinningError());
        return;
      }
      emit(_skrinningDataLoaded);
    });

    on<GetDetailSkrinning>((event, emit) async {
      try {
        final idSkrinning = event.skrinning.idSkrinning;
        detailskrinning =
            await ApiHelper.get('/api/detailskrinning/$idSkrinning').then(
                (value) => (value.data['data'] as List)
                    .map((e) => DetailSkrinning.fromJson(e))
                    .toList());

        emit(_skrinningDataLoaded);
      } catch (e) {
        emit(SkrinningError());
        return;
      }
    });

    on<GetSoalJawabItem>((event, emit) {
      try {
        final soalJawaban = event.detailSkrinning.soalJawab ?? [];
        emit(SoalJawabItemCountLoaded(soalJawaban.length));
      } catch (e) {
        emit(SkrinningError());
      }
    });
  }

  List<Skrinning> skrinning = [];

  List<RiwayatSkrinning> riwayatskrinning = [];

  List<DetailSkrinning> detailskrinning = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: skrinning,
        riwayatskrinning: riwayatskrinning,
        detailskrinning: detailskrinning,
        soalJawaban: const [],
      );
}
