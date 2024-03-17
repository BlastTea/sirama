part of '../blocs.dart';

class SkrinningBloc extends Bloc<SkrinningEvent, SkrinningState> {
  SkrinningBloc() : super(SkrinningInitial()) {
    on<SetSkrinningState>((event, emit) => emit(event.state ?? _skrinningDataLoaded));

    on<SetSkrinningToInitial>((event, emit) => emit(SkrinningInitial()));

    on<InitializeSkrinningData>((event, emit) async {
      try {
        skrinning = await ApiHelper.get('/api/skrinning', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => Skrinning.fromJson(e)).toList());
        riwayatskrinning = await ApiHelper.get('/api/riwayatskrinning', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => RiwayatSkrinning.fromJson(e)).toList());
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
        detailriwayatskrinning = await ApiHelper.get('/api/detailriwayatskrinning/$idBagSkrinUser', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => DetailRiwayatSkrinning.fromJson(e)).toList());

        emit(_skrinningDataLoaded);
      } catch (e) {
        emit(SkrinningError());
        return;
      }
    });

    on<GetDetailSkrinning>((event, emit) async {
      try {
        final idSkrinning = event.skrinning.idSkrinning;

        dynamic response = await ApiHelper.get('/api/detailskrinning/$idSkrinning', ignoreAuthorization: false);
        detailskrinning = (response['data'] as List).map((e) => DetailSkrinning.fromJson(e)).toList();
        skrinuser = (response['skrin_user'] as List).map((e) => SkrinUser.fromJson(e)).toList();
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

    on<GetSoalJawabRiwayatItem>((event, emit) {
      try {
        final soalJawabanRiwayat = event.detailriwayatskrinning.soalJawab ?? [];
        emit(SoalJawabItemCountLoaded(soalJawabanRiwayat.length));
      } catch (e) {
        emit(SkrinningError());
        ApiHelper.handleError(e);
      }
    });

    on<SubmitJawabanSkrinning>((event, emit) async {
      try {
        final idBagSkrinning = event.detailskrinning.idBagianSkrinning;
        final List<int> selectedAnswers = event.selectedAnswers;

        int? skrinUserId;
        if (skrinuser.isNotEmpty) {
          skrinUserId = skrinuser[0].idSkrinUser;
        }

        Map<String, dynamic> requestBody = {
          'id_bagian_skrining': idBagSkrinning,
          'skrin_user': skrinUserId,
          'id_jawaban_skrinning': selectedAnswers,
        };

        dynamic response = await ApiHelper.post('/api/submitskrinning', body: requestBody);

        final dataHasilSubmit = response['data'];
        if (response.statusCode == 200) {
          emit(SubmissionSuccess(dataHasilSubmit));
          if (kDebugMode) {
            print('Data dari response $dataHasilSubmit');
          } else {
            if (kDebugMode) {
              print('Ini data !200 $dataHasilSubmit');
            }
          }
        }
      } catch (e) {
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
        soalJawabanRiwayat: const [],
      );
}
