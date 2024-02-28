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

    on<GetDetailRiwayatSkrinning>((event, emit) async {
      try {
        final idBagSkrinUser = event.riwayatskrinning.idBagSkrinUser;
        detailriwayatskrinning =
            await ApiHelper.get('/api/detailriwayatskrinning/$idBagSkrinUser')
                .then((value) => (value.data['data'] as List)
                    .map((e) => DetailRiwayatSkrinning.fromJson(e))
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

    on<SubmitJawabanSkrinning>((event, emit) async {
      try {
        final idBagSkrinning = event.detailskrinning?.idBagianSkrinning;
        final idSkrinUser = event.detailskrinning?.skrinUser!.idSkrinUser;
        final selectedAnswers = event.selectedAnswers;
        final jawabanCount = selectedAnswers.length;

        Map<String, dynamic> requestBody = {
          'id_bagian_skrining': idBagSkrinning,
          'skrin_user': idSkrinUser,
        };

        for (int i = 0; i < jawabanCount; i++) {
          requestBody['id_jawaban_skrinning[$i]'] = selectedAnswers[i];
        }

        await ApiHelper.post('/api/submitskrinning', body: requestBody);
      } catch (e) {
        emit(SkrinningError());
      }
    });
  }

  List<Skrinning> skrinning = [];

  List<RiwayatSkrinning> riwayatskrinning = [];

  List<DetailRiwayatSkrinning> detailriwayatskrinning = [];

  List<DetailSkrinning> detailskrinning = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: skrinning,
        riwayatskrinning: riwayatskrinning,
        detailskrinning: detailskrinning,
        detailriwayatskrinning: detailriwayatskrinning,
        soalJawaban: const [],
      );
}
