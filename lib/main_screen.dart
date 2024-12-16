import 'package:flutter/material.dart';
import 'package:mole/match_detail_screen.dart';
import 'model/competition.dart';
import 'model/match.dart';
import 'model/news.dart';
import 'news_detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Toolbar(),
          CompetitionList(),
          TodayMatches(),
          TrendingNews(),
        ]),
      ),
    ));
  }
}

class Toolbar extends StatelessWidget {
  const Toolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.account_circle, size: 32),
          Text(
            "Mole.",
            style: TextStyle(fontFamily: "Coolvetica", fontSize: 24),
          ),
          Icon(Icons.notifications_none, size: 32),
        ],
      ),
    );
  }
}

class CompetitionList extends StatefulWidget {
  const CompetitionList({super.key});

  @override
  State<CompetitionList> createState() => _CompetitionListState();
}

class _CompetitionListState extends State<CompetitionList> {
  var selectedIndex = competitions.indexWhere((Competition competition) {
    return competition.isSelected;
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 4),
          itemBuilder: (context, index) {
            final competition = competitions[index];
            final bool isSelected = (index == selectedIndex);
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: SizedBox(
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: (isSelected) ? Colors.blue : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(competition.image, width: 42, height: 42),
                        const SizedBox(height: 4),
                        Text(
                          competition.name,
                          style: TextStyle(
                            color: (isSelected) ? Colors.white : Colors.black,
                            fontFamily: "FonceSans",
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: competitions.length,
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          title,
          style: const TextStyle(
            fontFamily: "FonceSans",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class TodayMatches extends StatefulWidget {
  const TodayMatches({super.key});

  @override
  State<TodayMatches> createState() => _TodayMatchesState();
}

class _TodayMatchesState extends State<TodayMatches> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: SectionTitle(title: "Pertandingan Hari Ini"),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Divider(),
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final match = matches[index];
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MatchDetailScreen(match: match);
                        },
                      ));
                    },
                    child: Row(
                      children: [
                        Text(
                          match.time,
                          style: const TextStyle(
                            fontFamily: "FonceSans",
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color: const Color(0xFFF4F4F4),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          match.team1.image,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      match.team1.name,
                                      style: const TextStyle(
                                        fontFamily: "Coolvetica",
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color: const Color(0xFFF4F4F4),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          match.team2.image,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      match.team2.name,
                                      style: const TextStyle(
                                        fontFamily: "Coolvetica",
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              match.isNotified = !match.isNotified;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: (match.isNotified)
                                ? Colors.blue
                                : const Color(0xFFF3F4F5),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Notify",
                                style: TextStyle(
                                  color: (match.isNotified)
                                      ? const Color(0xFFF3F4F5)
                                      : Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "FonceSans",
                                ),
                              ),
                              const SizedBox(width: 2),
                              Icon(
                                (match.isNotified)
                                    ? Icons.notifications_off
                                    : Icons.notifications_none,
                                color: (match.isNotified)
                                    ? const Color(0xFFF3F4F5)
                                    : Colors.blue,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: matches.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TrendingNews extends StatelessWidget {
  const TrendingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SectionTitle(title: "Berita Populer"),
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final newsItem = news[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NewsDetailScreen(news: newsItem);
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.white,
                    child: Container(
                      width: 220,
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                newsItem.image,
                                width: double.infinity,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${newsItem.time} / ${newsItem.authorCode}",
                                  style: const TextStyle(
                                    fontFamily: "NimbusSanL",
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    newsItem.title,
                                    style: const TextStyle(
                                      fontFamily: "NimbusSanL",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 4),
              itemCount: news.length),
        )
      ],
    );
  }
}
