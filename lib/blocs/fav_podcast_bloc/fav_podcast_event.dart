part of '../blocs.dart';

@immutable
abstract class PodcastEvent {}

class SetPodcastState extends PodcastEvent {
  SetPodcastState([this.state]);

  final PodcastState? state;
}

class SetPodcastToInitial extends PodcastEvent {}

class InitializePodcastData extends PodcastEvent {}
