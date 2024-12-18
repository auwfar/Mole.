import 'package:flutter/material.dart';
import 'package:mole/match_detail_section.dart';
import 'package:mole/standings_section.dart';
import 'package:mole/team_section.dart';
import 'package:mole/model/match.dart';

class MatchDetailScreen extends StatelessWidget {
  final Match match;

  const MatchDetailScreen({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFE5E5E5),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  match.competition.image,
                                  width: 38
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  match.competition.name,
                                  style: const TextStyle(
                                    fontFamily: "FonceSans",
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                match.team1.image,
                                width: 64,
                                height: 64,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                match.team1.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: "Coolvetica",
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                match.time,
                                style: const TextStyle(
                                  fontFamily: "NimbusSanL",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                match.dateLabel,
                                style: const TextStyle(
                                  fontFamily: "FonceSans",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                match.team2.image,
                                width: 64,
                                height: 64,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                match.team2.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: "Coolvetica",
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  ContentSection(match: match),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  final Match match;

  const ContentSection({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: 'Detail'),
                  Tab(text: 'Tim'),
                  Tab(text: 'Klasemen')
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    MatchDetailSection(match: match),
                    TeamSection(match: match),
                    StandingsSection(match: match),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
