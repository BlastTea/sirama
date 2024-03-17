part of '../blocs.dart';

@immutable
abstract class SkrinningEvent {}

class SetSkrinningState extends SkrinningEvent {
  SetSkrinningState([this.state]);

  final SkrinningState? state;
}

class SetSkrinningToInitial extends SkrinningEvent {}

class InitializeSkrinningData extends SkrinningEvent {}

class InitializeRiwayatSkrinningData extends SkrinningEvent {
  InitializeRiwayatSkrinningData({required this.riwayatskrinning});

  final RiwayatSkrinning riwayatskrinning;
}

class InitializeDetailRiwayatSkrinningData extends SkrinningEvent {
  InitializeDetailRiwayatSkrinningData({required this.detailriwayatskrinning});

  final DetailRiwayatSkrinning detailriwayatskrinning;
}

class InitializePilihSkrinningData extends SkrinningEvent {
  InitializePilihSkrinningData({required this.skrinning});

  final Skrinning skrinning;
}

class InitializeDetailSkrinning extends SkrinningEvent {
  InitializeDetailSkrinning({required this.detailskrinning});

  final DetailSkrinning detailskrinning;
}

class InitializeDetailRiwayatSkrinning extends SkrinningEvent {
  InitializeDetailRiwayatSkrinning({required this.detailriwayatkrinning});

  final DetailRiwayatSkrinning detailriwayatkrinning;
}

class GetDetailSkrinning extends SkrinningEvent {
  GetDetailSkrinning({required this.skrinning});

  final Skrinning skrinning;
}

class GetSoalJawabItem extends SkrinningEvent {
  GetSoalJawabItem({required this.detailSkrinning});

  final DetailSkrinning detailSkrinning;
}

class GetSoalJawabRiwayatItem extends SkrinningEvent {
  GetSoalJawabRiwayatItem({required this.detailriwayatskrinning});

  final DetailRiwayatSkrinning detailriwayatskrinning;
}


class GetDetailRiwayatSkrinning extends SkrinningEvent {
  GetDetailRiwayatSkrinning({required this.riwayatskrinning});

  final RiwayatSkrinning riwayatskrinning;
}

class SubmitJawabanSkrinning extends SkrinningEvent {
  final DetailSkrinning detailskrinning;
  final List<int> selectedAnswers;

  SubmitJawabanSkrinning({
    required this.detailskrinning,
    required this.selectedAnswers,
  });
}

class GetHasilSubmitSkrinning extends SkrinningEvent {
  GetHasilSubmitSkrinning({
    this.hasilskrinning,
  });

  final HasilSkrinning? hasilskrinning;
}