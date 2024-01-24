part of '../blocs.dart';

class EducationalVideoBloc extends Bloc<EducationalVideoEvent, EducationalVideoState> {
  EducationalVideoBloc() : super(EducationalVideoInitial()) {
    on<SetEducationalVideoState>((event, emit) => emit(event.state ?? _educationalVideoDataLoaded));

    on<SetEducationalVideoToInitial>((event, emit) => emit(EducationalVideoInitial()));

    on<InitializeEducationalVideoData>((event, emit) async {
      try {
        await ApiHelper.get('/tanyaahli');
      } catch (e) {
        emit(EducationalVideoError());
        return;
      }

      emit(_educationalVideoDataLoaded);
    });
  }

  EducationalVideoDataLoaded get _educationalVideoDataLoaded => EducationalVideoDataLoaded();
}
