import 'package:mole/model/channel.dart';
import 'package:mole/model/competition.dart';

import 'team.dart';

class Match {
  String dateLabel;
  String date;
  String time;
  Team team1;
  Team team2;
  Competition competition;
  List<Channel> channels;
  bool isNotified;

  Match({
    required this.dateLabel,
    required this.date,
    required this.time,
    required this.team1,
    required this.team2,
    required this.competition,
    required this.channels,
    required this.isNotified,
  });
}

var matches = [
  Match(
    dateLabel: "Besok",
    date: "7 Desember 2024",
    time: "13:00 WIB",
    team1: rrq,
    team2: tlid,
    competition: mpl,
    channels: channels,
    isNotified: false,
  ),
];
