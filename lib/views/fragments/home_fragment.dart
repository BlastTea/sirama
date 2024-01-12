part of 'fragments.dart';

var fitur = ['ChatMe', 'Skrining', 'Infografis', 'Film', 'Podcast', 'Video Edukasi', 'Tanya Ahli'];
var selectedFitur = 0;

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome Home',
                                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Altamis Atmaja 👋',
                                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black26),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipOval(
                            child: Image.asset('assets/ugm.png', width: 50),

                            //45:00 min
                          ),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                '“It is better to conquer yourself than to win a thousand battles yourself than to win a thousand battles yourself than to win a thousand battles”',
                                style: Config.textStyleBodyLarge.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                'assets/quote.png',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CardTile(
                      title: const Text('Yuk, Tanya Ahli!'),
                      subtitle: const Text(shortLorem),
                      image: Image.asset('assets/card-homepage.png', height: 50.0),
                      imageAlignment: CardTileAlignment.bottom,
                      minImageWidth: 134.0,
                      onPressed: () => debugPrint('Tanya Ahli pressed'),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Container(
                  //     height: 225,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(15),
                  //       color: Theme.of(context).colorScheme.primary,
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Flexible(
                  //           child: Padding(
                  //               padding: const EdgeInsets.all(20),
                  //               child: Column(
                  //                 mainAxisAlignment: MainAxisAlignment.start,
                  //                 children: [
                  //                   Text(
                  //                     'Yuk, Tanya Ahli!',
                  //                     textAlign: TextAlign.start,
                  //                     style: TextStyle(
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Theme.of(context).colorScheme.onPrimary,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     'Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum',
                  //                     textAlign: TextAlign.start,
                  //                     style: TextStyle(
                  //                       fontSize: 10,
                  //                       color: Theme.of(context).colorScheme.onPrimary,
                  //                     ),
                  //                   ),
                  //                   const SizedBox(
                  //                     height: 10,
                  //                   ),
                  //                   Align(
                  //                     alignment: Alignment.centerLeft,
                  //                     child: Container(
                  //                       height: 35,
                  //                       width: 100,
                  //                       padding: const EdgeInsets.all(10),
                  //                       decoration: BoxDecoration(
                  //                         borderRadius: BorderRadius.circular(5),
                  //                         color: const Color(0xFFFAFAFA),
                  //                       ),
                  //                       child: const Text(
                  //                         'Tanya Ahli',
                  //                         textAlign: TextAlign.center,
                  //                         style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               )),
                  //         ),
                  //         Stack(
                  //           clipBehavior: Clip.hardEdge,
                  //           children: [
                  //             Image.asset(
                  //               'assets/card-homepage.png',
                  //               height: double.infinity,
                  //               fit: BoxFit.contain,
                  //             ),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Menu',
                          style: Config.textStyleHeadlineSmall,
                        ),
                      ],
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
                              decoration: BoxDecoration(color: selectedFitur == index ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primaryContainer, borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                fitur[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: selectedFitur == index ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onPrimaryContainer,
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: 7),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Tandai tiga kebaikanmu hari ini',
                          style: Config.textStyleHeadlineSmall,
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
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Berpamitan kepada orang tua',
                                textAlign: TextAlign.start,
                                style: Config.textStyleTitleSmall.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Checkbox(
                                    activeColor: Theme.of(context).colorScheme.onPrimary,
                                    checkColor: Theme.of(context).colorScheme.primary,
                                    value: false,
                                    onChanged: (value) {},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Berdoa sebelum belajar',
                                textAlign: TextAlign.start,
                                style: Config.textStyleTitleSmall.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Checkbox(
                                    activeColor: Theme.of(context).colorScheme.onPrimary,
                                    checkColor: Theme.of(context).colorScheme.primary,
                                    value: true,
                                    onChanged: (value) {},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'Menyapa kepada teman',
                                textAlign: TextAlign.start,
                                style: Config.textStyleTitleSmall.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Checkbox(
                                    activeColor: Theme.of(context).colorScheme.onPrimary,
                                    checkColor: Theme.of(context).colorScheme.primary,
                                    value: false,
                                    onChanged: (value) {},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      );
}
