import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/core/theme/color_scheme.dart';
import 'package:provider/provider.dart';
import '../../model/leadership.dart';
import '../../provider/leadershiprovider.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LeadershipProvider>().initState();
  }

  @override
  void dispose() {
    context.read<LeadershipProvider>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
      ),
      body: Consumer<LeadershipProvider>(
        builder: (context, leadershipProvider, child) {
          final leaders = leadershipProvider.searchLeaders(
              leadershipProvider.leaders,
              leadershipProvider.searchController.text);
          print("the ${leaders.length}");

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: leadershipProvider.searchController,
                  decoration: InputDecoration(
                    labelText: 'Search by Name',
                    suffixIcon:
                        leadershipProvider.searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  leadershipProvider.searchController.clear();
                                },
                              )
                            : null,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: leadershipProvider.scrollController,
                  itemCount: leaders.length,
                  itemBuilder: (context, index) {
                    final leader = leaders[index];
                    return Card(
                      child: ListTile(
                        tileColor: leader.position == 1
                            ? Colors.amberAccent
                            : index % 2 == 0
                                ? lightColorScheme.secondaryContainer
                                : lightColorScheme.primaryContainer,
                        leading: Image.asset(
                          leader.imageAsset,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(leader.name),
                        subtitle: const Text("QUIZ ABCD"),
                        trailing: leader.position == 1
                            ? Image.asset("assets/images/crown.png")
                            : const SizedBox(),
                      ),
                    );
                  },
                ),
              ),
              if (leadershipProvider.loadingMore)
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: CupertinoActivityIndicator(),
                ),
            ],
          );
        },
      ),
    );
  }
}
