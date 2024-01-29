part of '../blocs.dart';

class EducationalVideoBloc extends Bloc<EducationalVideoEvent, EducationalVideoState> {
  EducationalVideoBloc() : super(EducationalVideoInitial()) {
    on<SetEducationalVideoState>(
        (event, emit) => emit(event.state ?? _educationalVideoDataLoaded));

    on<SetEducationalVideoToInitial>(
        (event, emit) => emit(EducationalVideoInitial()));

    on<InitializeEducationalVideoData>((event, emit) async {
      try {
        _videoEdukasiList = await ApiHelper.get('/api/video_edukasi').then(
            (value) => (value.data['data'] as List)
                .map((e) => EducationalVideo.fromJson(e))
                .toList());
      } catch (e) {
        emit(EducationalVideoError());
        return;
      }

      emit(_educationalVideoDataLoaded);
    });
  }

  List<EducationalVideo> _videoEdukasiList = [];

  EducationalVideoDataLoaded get _educationalVideoDataLoaded => EducationalVideoDataLoaded(
        videoedukasi : _videoEdukasiList
      );
}
