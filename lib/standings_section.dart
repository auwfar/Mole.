import 'package:flutter/material.dart';
import 'model/standings.dart';
import 'model/match.dart';

class StandingsSection extends StatelessWidget {
  final Match match;

  const StandingsSection({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 4),
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  offset: const Offset(0, -2),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 12,
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          '#',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "NimbusSanL",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Padding(
                          padding: EdgeInsets.only(left: 44),
                          child: Text(
                            'Tim',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "NimbusSanL",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Match',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "NimbusSanL",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Game',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "NimbusSanL",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Diff',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "NimbusSanL",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: standings.length,
                  itemBuilder: (context, index) {
                    final item = standings[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: (item.team.name == match.team1.name ||
                                item.team.name == match.team2.name)
                            ? const Color(0xFFDFF6FF)
                            : Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              const SizedBox(width: 16),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "${index + 1}.",
                                  textAlign: TextAlign.start,
                                  style:
                                      const TextStyle(fontFamily: "FonceSans"),
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 4),
                                    Image.asset(
                                      item.team.image,
                                      width: 32,
                                      height: 32,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      item.team.name,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontFamily: "Coolvetica"),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "${item.matchWin} - ${item.matchLose}",
                                  textAlign: TextAlign.center,
                                  style:
                                      const TextStyle(fontFamily: "FonceSans"),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "${item.gameWin} - ${item.gameLose}",
                                  textAlign: TextAlign.center,
                                  style:
                                      const TextStyle(fontFamily: "FonceSans"),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  (item.gameWin - item.gameLose).toString(),
                                  textAlign: TextAlign.center,
                                  style:
                                      const TextStyle(fontFamily: "FonceSans"),
                                ),
                              ),
                              const SizedBox(width: 16),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
