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
          final List<String> imgList = stateQuote.quotes.map((quote) => "https://dev-sirama.propertiideal.id/storage/quote/${quote.gambarQuote!}").toList();

          final List<Widget> imageSliders = imgList
              .map(
                (item) => ImageContainer.hero(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  tag: item,
                  image: NetworkImage(item),
                  border: const Border(),
                  borderRadius: BorderRadius.circular(5.0),
                  extendedAppBar: AppBar(),
                ),

                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 10.0),
                //   child: ClipRRect(
                //     borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                //     child: Image.network(
                //       item,
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              )
              .toList();
          return CarouselSlider(
            options: CarouselOptions(
              height: 90.0,
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
