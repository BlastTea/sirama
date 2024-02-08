part of '../../pages.dart';

class FavFilm extends StatelessWidget {
  const FavFilm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavFilmBloc, FavFilmState>(
      builder: (context, stateFavFilm) {
        if (MyApp.favFilmBloc.state is FavFilmInitial) {
          MyApp.favFilmBloc.add(InitializeFavFilmData());
        }
        return const Scaffold(
            body: Center(
          child: Text('Fav Film'),
        ));
      },
    );
  }
}
