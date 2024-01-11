part of '../blocs.dart';

@immutable
abstract class HomepageEvent {}

class SetHomepageState extends HomepageEvent {
  SetHomepageState([this.state]);

  final HomepageState? state;
}

class SetHomepageSelectedIndex extends HomepageEvent {
  SetHomepageSelectedIndex({required this.index});

  final int index;
}
