part of '../blocs.dart';

class EducationalVideoBloc extends Bloc<EducationalVideoEvent, EducationalVideoState> {
  EducationalVideoBloc() : super(EducationalVideoInitial()) {
    on<SetEducationalVideoState>((event, emit) => emit(event.state ?? _educationalVideoDataLoaded));

    on<SetEducationalVideoToInitial>((event, emit) => emit(EducationalVideoInitial()));

    on<InitializeEducationalVideoData>((event, emit) async {
      try {
        _educationalVideos = await ApiHelper.get('/api/videoedukasi').then((value) => (value.data['data'] as List).map((e) => VideoEdukasi.fromJson(e)).toList());

        await for (VideoEdukasi educationalVideo in Stream.fromIterable(_educationalVideos)) {
          educationalVideo.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(educationalVideo.linkVideoEdukasi ?? ''));
        }
      } catch (e) {
        emit(EducationalVideoError());
        return;
      }

      emit(_educationalVideoDataLoaded);
    });
  }

  List<VideoEdukasi> _educationalVideos = [];

  EducationalVideoDataLoaded get _educationalVideoDataLoaded => EducationalVideoDataLoaded(educationalVideos: _educationalVideos);
}
