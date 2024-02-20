part of '../blocs.dart';

class SkrinningBloc extends Bloc<SkrinningEvent, SkrinningState> {
  SkrinningBloc() : super(SkrinningInitial()) {
    on<SetSkrinningState>((event, emit) => emit(event.state ?? _skrinningDataLoaded));

    on<SetSkrinningToInitial>((event, emit) => emit(SkrinningInitial()));

    on<InitializeSkrinningData>((event, emit) async {
      try {
        skrinning = await ApiHelper.get('/api/skrinning').then((value) => (value.data['data'] as List).map((e) => Skrinning.fromJson(e)).toList());
        riwayatskrinning = await ApiHelper.get('/api/riwayatskrinning').then((value) => (value.data['data'] as List).map((e) => RiwayatSkrinning.fromJson(e)).toList());
        detailskrinning = await ApiHelper.get('/api/detailskrinning/1').then((value) => (value.data['data'] as List).map((e) => DetailSkrinning.fromJson(e)).toList());
      } catch (e) {
        emit(SkrinningError());
        return;
      }
      emit(_skrinningDataLoaded);
    });
  }

  List<Skrinning> skrinning = [];

  List<RiwayatSkrinning> riwayatskrinning = [];

  List<DetailSkrinning> detailskrinning = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: skrinning,
        riwayatskrinning: riwayatskrinning,
        detailskrinning: detailskrinning,
      );
}
