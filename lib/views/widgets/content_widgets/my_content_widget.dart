part of '../widgets.dart';

class MyContentWidget extends StatelessWidget {
  const MyContentWidget(
      {super.key,
      this.jenisKonten,
      this.untukUsia,});
      
  final String? jenisKonten;
  final String? untukUsia;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 71,
              width: 155,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Jenis Konten',
                      style: Config.textStyleBodyMedium.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/jenis-konten.svg',
                        ),
                        const SizedBox(width: 5),
                        Text(jenisKonten!
                          ,
                          style: Config.textStyleBodyLarge.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
              height: 71,
              width: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Untuk Usia',
                      style: Config.textStyleBodyMedium.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/untuk-usia.svg',
                        ),
                        const SizedBox(width: 5),
                        Text(untukUsia!,
                          style: Config.textStyleBodyLarge.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
