part of 'fragments.dart';

var fitur = [
  'ChatMe',
  'Skrining',
  'Infografis',
  'Film',
  'Podcast',
  'Video Edukasi',
  'Tanya Ahli'
];
var selectedFitur = 0;

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Halo, Altamis 👋',
                      style: Config.textStyleHeadlineMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            '“It is better to conquer yourself than to win a thousand battles”',
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            './../assets/quote.png',
                            height: 50,
                            width: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AspectRatio(
                aspectRatio: 336 / 184,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Config.primaryColor,
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        './../assets/card-homepage.png',
                        height: double.maxFinite,
                        width: double.maxFinite,
                        fit: BoxFit.contain,
                        alignment: Alignment.centerRight,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Medical Center',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Flexible(
                              child: Text(
                                'Yorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 202, 221, 255),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 202, 221, 255),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'Tanya Ahli',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: selectedFitur == index
                                  ? Config.primaryColor
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            fitur[index],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: selectedFitur == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 7),
              )
            ],
          ),
        ),
      );
}
