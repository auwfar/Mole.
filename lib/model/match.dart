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
    team1: Team(
      image: "images/rrq.png",
      name: "RRQ Hoshi",
      coach: Coach(
        image: "images/khezcute.png",
        name: "Khezcute",
      ),
      players: [
        Player(
          image: "images/skylar.png",
          name: "Skylar",
          role: Role.gold,
        ),
        Player(
          image: "images/idok.png",
          name: "Idok",
          role: Role.roamer,
        ),
        Player(
          image: "images/sutsujin.png",
          name: "Sutsujin",
          role: Role.jungler,
        ),
        Player(
          image: "images/rinz.png",
          name: "Rinz",
          role: Role.mid,
        ),
        Player(
          image: "images/dyrennn.png",
          name: "Dyrennn",
          role: Role.exp,
        ),
      ],
    ),
    team2: Team(
      image: "images/onic.png",
      name: "Fnatic Onic",
      coach: Coach(
        image: "images/yeb.png",
        name: "Yeb",
      ),
      players: [
        Player(
          image: "images/cw.png",
          name: "Cw",
          role: Role.gold,
        ),
        Player(
          image: "images/kiboy.png",
          name: "Kiboy",
          role: Role.roamer,
        ),
        Player(
          image: "images/kairi.png",
          name: "Kairi",
          role: Role.jungler,
        ),
        Player(
          image: "images/sanz.png",
          name: "Sanz",
          role: Role.mid,
        ),
        Player(
          image: "images/rezzz.png",
          name: "Rezzz",
          role: Role.exp,
        ),
      ],
    ),
    isNotified: false,
  ),
];
