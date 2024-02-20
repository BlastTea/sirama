part of '../pages.dart';

class ScreeningPage extends StatelessWidget {
  const ScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Skrining"),
          centerTitle: true,
          bottom: TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 30.0),
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            tabs: ['Pilihan Skrining', 'Riwayat Skrining'].map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: const TabBarView(children: [
          ChooseScreeningPage(),
          HistoryScreeningPage(),
        ]),
      ),
    );
  }
}
