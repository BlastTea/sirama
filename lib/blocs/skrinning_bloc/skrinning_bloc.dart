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
        for (var item in skrinning) {
          if (item.idSkrinning != null) {
            var details =
                await ApiHelper.get('/api/detailskrinning/${item.idSkrinning}')
                    .then((value) => (value.data['data'] as List)
                        .map((e) => DetailSkrinning.fromJson(e))
                        .toList());
            if (details.isNotEmpty) {
              detailskrinning.add(details);
            }
          }
        }
      } catch (e) {
        emit(SkrinningError());
        return;
      }
      emit(_skrinningDataLoaded);
    });
  }

  List<Skrinning> skrinning = [];

  List<RiwayatSkrinning> riwayatskrinning = [];

  List<List<DetailSkrinning>> detailskrinning = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: skrinning,
        riwayatskrinning: riwayatskrinning,
        detailskrinning: detailskrinning,
      );
}
