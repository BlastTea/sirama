part of '../pages.dart';

class CategorySessionsPage extends StatelessWidget {
  const CategorySessionsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              title: Text('Yuk, Tanya Ahli!'),
              centerTitle: true,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Daftar ahli yang tersedia',
                  style: Config.textStyleHeadlineSmall,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kShapeLarge),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(24.0),
                            right: Radius.circular(kShapeLarge)),
                        child: InkWell(
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(24.0),
                              right: Radius.circular(kShapeLarge)),
                          onTap: () => NavigationHelper.to(MaterialPageRoute(
                              builder: (context) =>
                                  DoctorProfilePage(index: index))),
                          child: Row(
                            children: [
                              ImageContainer.hero(
                                tag: 'Doctor Profile Picture $index',
                                width: 48.0,
                                height: 48.0,
                                iconSize: 24.0,
                                icon: Icons.person,
                                border: const Border(),
                                image: const NetworkImage(
                                    'https://avatars.githubusercontent.com/u/75353116?v=4'),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sahana V',
                                    style: Config.textStyleBodyLarge.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                  const SizedBox(height: 4.0),
                                  Text(
                                    'Msc in Clinical Psychology',
                                    style: Config.textStyleBodyMedium.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: Theme.of(context).colorScheme.onPrimary),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    DateTime.now()
                                        .toFormattedDate(withMonthName: true),
                                    style: Config.textStyleBodyMedium.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.schedule,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    '${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()} - ${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()}',
                                    style: Config.textStyleBodyMedium.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          FilledButton(
                            onPressed: () => NavigationHelper.to(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const InputAskPage())),
                            style: FilledButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            child: const Text('Chat sekarang'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 1000,
            ),
          ],
        ),
      );
}
