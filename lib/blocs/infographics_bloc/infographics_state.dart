part of '../blocs.dart';

@immutable
abstract class InfographicsState {}

class InfographicsInitial extends InfographicsState {}

class InfographicsError extends InfographicsState {}

class InfographicsDataLoaded extends InfographicsState {}
