import 'package:mole/model/coach.dart';
import 'package:mole/model/player.dart';
import 'team.dart';

class Match {
  String date;
  String time;
  Team team1;
  Team team2;
  bool isNotified;

  Match({
    required this.date,
    required this.time,
    required this.team1,
    required this.team2,
    required this.isNotified,
  });
}

var matches = [
  Match(
    date: "Besok",
    time: "01:00 PM",
    team1: rrq,
    team2: onic,
    isNotified: false,
  ),
];
