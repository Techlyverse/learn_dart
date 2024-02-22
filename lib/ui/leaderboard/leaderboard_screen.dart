import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_dart/theme/color_scheme.dart';
import 'package:provider/provider.dart';
import '../../provider/leaderboard_provider.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<LeaderboardProvider>().initializeState();
  }

  @override
  void dispose() {
    context.read<LeaderboardProvider>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
      ),
      body: Consumer<LeaderboardProvider>(
        builder: (context, leadershipProvider, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: leadershipProvider.searchController,
                  onTap: () {
                    leadershipProvider.searchLeaders();
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Search by Name',
                    suffixIcon:
                        leadershipProvider.searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  leadershipProvider.clearSearch();
                                },
                              )
                            : null,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: leadershipProvider.scrollController,
                  itemCount: leadershipProvider.getLeaders.length,
                  itemBuilder: (context, index) {
                    final leader = leadershipProvider.getLeaders[index];
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
