part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Dokter Profile'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  ImageContainer.hero(
                    tag: 'Dokter profile picture',
                    width: 132.0,
                    height: 132.0,
                    image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                    border: const Border(),
                    extendedAppBar: AppBar(
                      title: const Text('Zalorin Vexstar'),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zalorin Vexstar',
                        style: Config.textStyleHeadlineSmall,
                      ),
                      Text(
                        'Denteeth',
                        style: Config.textStyleTitleSmall.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Details',
                style: Config.textStyleHeadlineSmall,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                longLorem,
                style: Config.textStyleBodyMedium.copyWith(color: Config.greyColor),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jam Kerja',
                    style: Config.textStyleHeadlineSmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 9 ? 20.0 : 0.0),
                  child: ChoiceChip(
                    label: Text(TimeOfDay.fromDateTime(DateTime.now()).toFormattedString()),
                    selected: index == 0,
                    onSelected: (value) {},
                  ),
                ),
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hari',
                    style: Config.textStyleHeadlineSmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 6 ? 20.0 : 0.0),
                  child: ChoiceChip(
                    label: Text([
                      'Senin',
                      'Selasa',
                      'Rabu',
                      'Kamis',
                      'Jumat',
                      'Sabtu',
                      'Minggu',
                    ][index]),
                    selected: index == DateTime.now().weekday - 1,
                    onSelected: (value) {},
                  ),
                ),
                itemCount: 7,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyFilledButton(
                onPressed: () {},
                labelText: 'Konsultasi',
              ),
            ),
          ],
        ),
      );
}
