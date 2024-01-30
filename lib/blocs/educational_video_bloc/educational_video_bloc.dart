part of '../blocs.dart';

class EducationalVideoBloc extends Bloc<EducationalVideoEvent, EducationalVideoState> {
  EducationalVideoBloc() : super(EducationalVideoInitial()) {
    on<SetEducationalVideoState>((event, emit) => emit(event.state ?? _educationalVideoDataLoaded));

    on<SetEducationalVideoToInitial>((event, emit) => emit(EducationalVideoInitial()));

    on<InitializeEducationalVideoData>((event, emit) async {
      try {
        _educationalVideos = await ApiHelper.get('/api/videoedukasi').then((value) => (value.data['data'] as List).map((e) => EducationalVideo.fromJson(e)).toList());

        emit(_educationalVideoDataLoaded);

        await for (EducationalVideo educationalVideo in Stream.fromIterable(_educationalVideos)) {
          String? id = Uri.parse(educationalVideo.linkVideoEdukasi ?? '').queryParameters['v'];

          if (id == null) continue;

          try {
            educationalVideo.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/maxresdefault.jpg')).then((value) => value.data);
          } catch (e) {
            // Ignored, really
          }
          if (educationalVideo.thumbnailImageData == null) {
            try {
              educationalVideo.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/hqdefault.jpg')).then((value) => value.data);
            } catch (e) {
              // Ignored, really
            }
          }
          emit(_educationalVideoDataLoaded);
        }
      } catch (e) {
        emit(EducationalVideoError());
        return;
      }

      emit(_educationalVideoDataLoaded);
    });
  }

  List<EducationalVideo> _educationalVideos = [];

  EducationalVideoDataLoaded get _educationalVideoDataLoaded => EducationalVideoDataLoaded(educationalVideos: _educationalVideos);
}
