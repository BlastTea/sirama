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
        ApiHelper.handleError(e);
        return;
      }
      emit(_skrinningDataLoaded);
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

    on<GetDetailSkrinning>((event, emit) async {
      try {
        final idSkrinning = event.skrinning.idSkrinning;

        Response response =
            await ApiHelper.get('/api/detailskrinning/$idSkrinning');
        detailskrinning = (response.data['data'] as List)
            .map((e) => DetailSkrinning.fromJson(e))
            .toList();
        skrinuser = (response.data['skrin_user'] as List)
            .map((e) => SkrinUser.fromJson(e))
            .toList();
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
        ApiHelper.handleError(e);
      }
    });

    on<SubmitJawabanSkrinning>((event, emit) async {
      try {
        final idBagSkrinning = event.detailskrinning.idBagianSkrinning;
        final selectedAnswers = event.selectedAnswers;

        int? skrinUserId;
        if (skrinuser.isNotEmpty) {
          skrinUserId = skrinuser[0].idSkrinUser;
        }

        Map<String, dynamic> requestBody = {
          'id_bagian_skrining': idBagSkrinning,
          'skrin_user': skrinUserId,
        };

        for (int i = 0; i < selectedAnswers.length; i++) {
          requestBody['id_jawaban_skrinning[$i]'] = selectedAnswers[i];
        }

        if (kDebugMode) {
          print('Data yang diposting:');
          print(requestBody);
        }

        await ApiHelper.post('/api/submitskrinning', body: requestBody);
      } catch (e) {
        if (kDebugMode) {
          print(SkrinningError());
          print('sudah kesini');
        }
        emit(SkrinningError());
      }
    });
  }

  List<HasilSkrinning> hasilskrinning = [];

  List<Skrinning> skrinning = [];

  List<RiwayatSkrinning> riwayatskrinning = [];

  List<DetailRiwayatSkrinning> detailriwayatskrinning = [];

  List<DetailSkrinning> detailskrinning = [];

  List<SkrinUser> skrinuser = [];

  SkrinningDataLoaded get _skrinningDataLoaded => SkrinningDataLoaded(
        skrinnings: skrinning,
        riwayatskrinning: riwayatskrinning,
        detailskrinning: detailskrinning,
        detailriwayatskrinning: detailriwayatskrinning,
        soalJawaban: const [],
        hasilskrinning: hasilskrinning,
        skrinuser: skrinuser,
      );
}
