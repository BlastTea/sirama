part of '../pages.dart';

class ChooseScreeningPage extends StatelessWidget {
  const ChooseScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, state) {
        if (state is SkrinningDataLoaded) {
          return _buildScreeningList(context, state);
        } else if (state is SkrinningError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () {
                MyApp.skrinningBloc.add(InitializeSkrinningData());
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildScreeningList(BuildContext context, SkrinningDataLoaded state) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Yuk, skrining sekarang', style: TextStyle(fontSize: 20)),
              Text('${currentUser?.username ?? 'Guest'} 🤩', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              _buildScreeningTiles(state),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildScreeningTiles(SkrinningDataLoaded state) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      itemBuilder: (context, index) {
        return ListTile(
          title: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 7),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    state.skrinnings[index].jenisSkrinning!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/mainscreening');
          },
        );
      },
      itemCount: state.skrinnings.length,
    );
  }
}
