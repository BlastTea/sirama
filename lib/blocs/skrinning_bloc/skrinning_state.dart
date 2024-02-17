part of '../blocs.dart';

@immutable
abstract class SkrinningState {}

class SkrinningInitial extends SkrinningState {}

class SkrinningError extends SkrinningState {}

class SkrinningDataLoaded extends SkrinningState {
  SkrinningDataLoaded({
    required this.skrinnings,
    required this.detailskrinning,
    required this.riwayatskrinning,
  });

  final List<Skrinning> skrinnings;
  final List<DetailSkrinning> detailskrinning;
  final List<RiwayatSkrinning> riwayatskrinning;

  // final List<List<Skrinning>> SkrinningsLength;
}