part of '../pages.dart';

class OneOnOneSessionsPage extends StatelessWidget {
  const OneOnOneSessionsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('1 on 1 Sessions'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            const SizedBox(height: 20.0),
            CardTile(
              title: const Text('Upcoming Session'),
              subtitle: Text('Sahana V. Msc in Clicinal Psychology\n${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()} - ${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()}'),
              button: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Join Now'),
                  const SizedBox(width: 8.0),
                  Icon(Icons.play_circle, color: Theme.of(context).colorScheme.onPrimary),
                ],
              ),
              onPressed: () => debugPrint('Upcoming Session Pressed'),
            ),
            const SizedBox(height: 10.0),
            DropdownButton(
              value: 'All Sessions',
              underline: Container(),
              items: List.generate(
                4,
                (index) => DropdownMenuItem(
                  value: ['All Sessions', '1', '2', '3'][index],
                  child: Text(
                    ['All Sessions', '1', '2', '3'][index],
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: CardTile(
                  title: Row(
                    children: [
                      ImageContainer.hero(
                        tag: 'Sessions $index',
                        width: 48.0,
                        height: 48.0,
                        iconSize: 24.0,
                        icon: Icons.person,
                        border: const Border(),
                        image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      const SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sahana V',
                            style: Config.textStyleBodyLarge.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            'Msc in Clinical Psychology',
                            style: Config.textStyleBodyMedium.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  subtitle: const Divider(),
                  button: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              const SizedBox(width: 4.0),
                              Text(DateTime.now().toFormattedDate(withMonthName: true)),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              const SizedBox(width: 4.0),
                              Text('${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()} - ${TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()}'),
                            ],
                          ),
                        ],
                      ),
                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.onPrimary,
                          foregroundColor: Theme.of(context).colorScheme.primary,
                        ),
                        child: const Text('Chat sekarang'),
                      ),
                    ],
                  ),
                  buttonStyle: Config.textStyleBodyMedium.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              itemCount: 10,
            ),
          ],
        ),
      );
}
