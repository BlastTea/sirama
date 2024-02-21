part of '../pages.dart';

class ScreeningChooseListItem extends StatelessWidget {
  const ScreeningChooseListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MyApp.skrinningBloc.state is SkrinningInitial) {
      MyApp.skrinningBloc.add(InitializeSkrinningData());
    }
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateSkrinning) {
        if (stateSkrinning is SkrinningDataLoaded) {
          return ListView.builder(
            itemCount: stateSkrinning.skrinnings.length,
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
                          stateSkrinning.skrinnings[index].jenisSkrinning!,
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
          );
        } else if (stateSkrinning is SkrinningInitial) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (stateSkrinning is SkrinningError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.skrinningBloc.add(InitializeSkrinningData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
