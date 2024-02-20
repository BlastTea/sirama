part of '../blocs.dart';

class SkrinningBloc extends Bloc<SkrinningEvent, SkrinningState> {
  SkrinningBloc() : super(SkrinningInitial()) {
    on<SetSkrinningState>(
        (event, emit) => emit(event.state ?? _skrinningDataLoaded));

    on<SetSkrinningToInitial>((event, emit) => emit(SkrinningInitial()));

    on<InitializeSkrinningData>((event, emit) async {
      try {
        _skrinning = await ApiHelper.get('/api/skrinning').then(
            (value) => (value.data['data'] as List)
                .map((e) => Skrinning.fromJson(e))
                .toList());
        _riwayatskrinning = await ApiHelper.get('/api/riwayatskrinning').then(
            (value) => (value.data['data'] as List)
                .map((e) => RiwayatSkrinning.fromJson(e))
                .toList());
        _detailskrinning = await ApiHelper.get('/api/detailskrinning/1').then((value) => (value.data['data'] as List).map((e) => DetailSkrinning.fromJson(e)).toList());
      } catch (e) {
        emit(SkrinningError());
        return;
      }
      emit(_skrinningDataLoaded);
    });
  }

  List<Skrinning> _skrinning = [];

  List<RiwayatSkrinning> _riwayatskrinning = [];

  List<DetailSkrinning> _detailskrinning = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: _skrinning,
        riwayatskrinning: _riwayatskrinning,
        detailskrinning: _detailskrinning,
      );
}
