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

          final List<Widget> imageSliders = imgList
              .map(
                (item) => ImageContainer.hero(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  tag: item,
                  image: NetworkImage(item),
                  border: const Border(),
                  borderRadius: BorderRadius.circular(5.0),
                  extendedAppBar: AppBar(),
                ),
              )
              .toList();
          return CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.9,
              aspectRatio: 76/20,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
            ),
            items: imageSliders,
          );
        } else if (stateQuote is QuoteInitial) {
          return const Center(child: CircularProgressIndicator());
        } else if (stateQuote is QuoteError) {
          return ErrorOccuredButton(
              onRetryPressed: () => MyApp.quoteBloc.add(InitializeQuoteData()));
        } else {
          return Container();
        }
      },
    );
  }
}
