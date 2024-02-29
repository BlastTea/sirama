part of '../blocs.dart';

@immutable
abstract class SkrinningState {}

class SkrinningInitial extends SkrinningState {}

class SkrinningError extends SkrinningState {}

class SkrinningDataLoaded extends SkrinningState {
  SkrinningDataLoaded({
    required this.skrinnings,
    required this.riwayatskrinning,
    required this.detailskrinning,
    required this.detailriwayatskrinning,
    required this.soalJawaban,
    required this.hasilskrinning,
    required this.skrinuser,
  });

  final List<Skrinning> skrinnings;
  final List<RiwayatSkrinning> riwayatskrinning;
  final List<DetailSkrinning> detailskrinning;
  final List<DetailRiwayatSkrinning> detailriwayatskrinning;
  final List<SoalJawab> soalJawaban;
  final List<HasilSkrinning> hasilskrinning;
  final List<SkrinUser> skrinuser;
}

class SoalJawabItemCountLoaded extends SkrinningState {
  SoalJawabItemCountLoaded(this.itemCount);

  final int itemCount;
}
