part of '../blocs.dart';

@immutable
abstract class SkrinningState {}

class SkrinningInitial extends SkrinningState {}

class SkrinningError extends SkrinningState {}

class SkrinningDataLoaded extends SkrinningState {
  SkrinningDataLoaded({
    required this.skrinnings,
    required this.detailskrinning,
    required this.riwayatkrinning
  });

  final List<Skrinning> skrinnings;
  final List<DetailSkrinning> detailskrinning;
  final List<RiwayatSkrinning> riwayatkrinning;

  // final List<List<Skrinning>> SkrinningsLength;
}
