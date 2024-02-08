part of '../blocs.dart';

@immutable
abstract class FavInfografisState {}

class FavInfografisInitial extends FavInfografisState {}

class FavInfografisError extends FavInfografisState {}

class FavInfografisDataLoaded extends FavInfografisState {
  FavInfografisDataLoaded({
    required this.favinfografiss,
  });

  final List<FavInfografis> favinfografiss;

}
