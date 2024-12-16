import 'package:mole/model/competition.dart';

import 'team.dart';

class Match {
  String date;
  String time;
  Team team1;
  Team team2;
  Competition competition;
  bool isNotified;

  Match({
    required this.date,
    required this.time,
    required this.team1,
    required this.team2,
    required this.competition,
    required this.isNotified,
  });
}

var matches = [
  Match(
    date: "Besok",
    time: "01:00 PM",
    team1: rrq,
    team2: onic,
    competition: m6,
    isNotified: false,
  ),
];
