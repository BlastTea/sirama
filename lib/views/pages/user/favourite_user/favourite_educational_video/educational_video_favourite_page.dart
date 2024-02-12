part of '../../../pages.dart';

class FavEducationalVideo extends StatelessWidget {
  const FavEducationalVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavVideoEdukasiBloc, FavVideoEdukasiState>(
      builder: (context, stateFavVideoEdukasi) {
        if (MyApp.favVideoEdukasiBloc.state is FavVideoEdukasiInitial) {
          MyApp.favVideoEdukasiBloc.add(InitializeFavVideoEdukasiData());
        }
        
        return const Scaffold(
            body: Center(
          child: Text('Fav Edu'),
        ));
      },
    );
  }
}
