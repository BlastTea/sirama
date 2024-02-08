part of '../../pages.dart';

class FavInfographics extends StatelessWidget {
  const FavInfographics({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavInfografisBloc, FavInfografisState>(
      builder: (context, stateFavInfografis) {
        if (MyApp.favInfografisBloc.state is FavInfografisInitial) {
          MyApp.favInfografisBloc.add(InitializeFavInfografisData());
        }
        return const Scaffold(
            body: Center(
          child: Text('Fav Info'),
        ));
      },
    );
  }
}
