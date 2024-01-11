part of '../blocs.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(_homeDataLoaded) {
    on<SetHomepageState>((event, emit) => emit(event.state ?? _homeDataLoaded));

    on<SetHomepageSelectedIndex>((event, emit) {
      _selectedIndex = event.index;
      emit(_homeDataLoaded);
    });
  }

  static int _selectedIndex = 0;

  static HomepageDataLoaded get _homeDataLoaded => HomepageDataLoaded(
        selectedIndex: _selectedIndex,
      );
}
