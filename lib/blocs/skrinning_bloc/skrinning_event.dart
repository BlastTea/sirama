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

class InitializePilihSkrinningData extends SkrinningEvent {
  InitializePilihSkrinningData({required this.skrinning});

  final Skrinning skrinning;
}
