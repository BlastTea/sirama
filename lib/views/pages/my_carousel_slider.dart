part of 'pages.dart';

class MyCarouselSlider extends StatelessWidget {
  const MyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteBloc, QuoteState>(
      builder: (context, stateQuote) {
        if (stateQuote is QuoteInitial) {
          MyApp.quoteBloc.add(InitializeQuoteData());
        }

        if (stateQuote is QuoteDataLoaded) {
          final List<String> imgList = stateQuote.quotes
              .map((quote) =>
                  "https://dev-sirama.propertiideal.id/storage/quote/${quote.gambarQuote!}")
              .toList();

          if (kDebugMode) {
            print(imgList);
          }
          final List<Widget> imageSliders = imgList
              .map((item) => Container(
                    margin: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            item, width: 250,
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList();
          return CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
            ),
            items: imageSliders,
          );
        } else if (stateQuote is QuoteInitial) {
          return const CircularProgressIndicator();
        } else if (stateQuote is QuoteError) {
          return const Text('error anj');
        } else {
          return Container();
        }
      },
    );
  }
}
