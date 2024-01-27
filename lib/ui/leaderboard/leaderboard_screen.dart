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
  final ScrollController scrollController = ScrollController();
  bool loadingMore = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.dispose();
    searchController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (!loadingMore) {
        setState(() {
          loadingMore = true;
        });

        Provider.of<LeadershipProvider>(context, listen: false)
            .loadMoreLeaders();

        setState(() {
          loadingMore = false;
        });
      }
    }
  }

  List<Leader> searchLeaders(List<Leader> leaders, String query) {
    return leaders
        .where(
            (leader) => leader.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard"),
      ),
      body: Consumer<LeadershipProvider>(
        builder: (context, leadershipProvider, child) {
          final leaders =
              searchLeaders(leadershipProvider.leaders, searchController.text);
          print("the ${leaders.length}");

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Search by Name',
                    suffixIcon: searchController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {});
                              searchController.clear();
                            },
                          )
                        : null,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: leaders.length,
                  itemBuilder: (context, index) {
                    if (index == leaders.length) {
                      return loadingMore
                          ? const SizedBox(
                              height: 50,
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : SizedBox();
                    }

                    final leader = leaders[index];
                    return Card(
                      child: ListTile(
                        tileColor: leader.position == 1
                            ? Colors.amberAccent
                            : index%2 == 0 ? lightColorScheme.secondaryContainer : lightColorScheme.primaryContainer,
                        leading: Image.asset(
                          leader.imageAsset,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(leader.name),
                        subtitle: Text("QUIZ ABCD"),
                        trailing: leader.position == 1
                            ? Image.asset("assets/images/crown.png")
                            : SizedBox(),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
