part of '../blocs.dart';

@immutable
abstract class HomepageState {}

class HomepageDataLoaded extends HomepageState {
  HomepageDataLoaded({required this.selectedIndex});

  final int selectedIndex;
}
