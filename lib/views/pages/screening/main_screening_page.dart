part of '../pages.dart';

class MainScreeningPage extends StatelessWidget {
  const MainScreeningPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: ListView(
        shrinkWrap: true,
        children: const [Text('tes')],
      )

          // SliverList.builder(
          //     itemBuilder: (context, index) => Padding(
          //           padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          //           child: Container(
          //             padding: const EdgeInsets.all(20.0),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(kShapeLarge),
          //               color: Theme.of(context).colorScheme.primary,
          //             ),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Material(
          //                   color: Colors.transparent,
          //                   borderRadius:  const BorderRadius.horizontal(left: Radius.circular(24.0), right: Radius.circular(kShapeLarge)),
          //                   child: InkWell(
          //                     borderRadius:  const BorderRadius.horizontal(left: Radius.circular(24.0), right: Radius.circular(kShapeLarge)),
          //                     child: Row(
          //                       children: [
          //                          const SizedBox(width: 10.0),
          //                         Column(
          //                           crossAxisAlignment: CrossAxisAlignment.start,
          //                           children: [
          //                             Text(
          //                               'Sahana V',
          //                               style: Config.textStyleBodyLarge.copyWith(
          //                                 color: Theme.of(context).colorScheme.onPrimary,
          //                               ),
          //                             ),
          //                             const SizedBox(height: 4.0),
          //                             Text(
          //                               'Msc in Clinical Psychology',
          //                               style: Config.textStyleBodyMedium.copyWith(
          //                                 color: Theme.of(context).colorScheme.onPrimary,
          //                               ),
          //                             )
          //                           ],
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 const Divider(),
          //               ],
          //             ),
          //           ),
          //         ))
          );
}
