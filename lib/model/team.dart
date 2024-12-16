import 'coach.dart';
import 'player.dart';

class Team {
  String image;
  String name;
  Coach coach;
  List<Player> players;

  Team({required this.image, required this.name, required this.coach, required this.players});
}

var rrq = Team(
  image: "images/teams/rrq.png",
  name: "RRQ Hoshi",
  coach: khezcute,
  players: [skylar, idok, sutsujin, rinz, dyrennn],
);
var onic = Team(
  image: "images/teams/onic.png",
  name: "Fnatic Onic",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var evos = Team(
  image: "images/teams/evos.png",
  name: "Evos Glory",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var ae = Team(
  image: "images/teams/ae.png",
  name: "Alter Ego",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var btr = Team(
  image: "images/teams/btr.png",
  name: "Bigetron Alpha",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var dewa = Team(
  image: "images/teams/dewa.png",
  name: "Dewa United Esports",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var geek = Team(
  image: "images/teams/geek.png",
  name: "Geek Fam ID",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var rbl = Team(
  image: "images/teams/rbl.png",
  name: "Rebellion Esports",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);
var tlid = Team(
  image: "images/teams/tlid.png",
  name: "Team Liquid ID",
  coach: yeb,
  players: [cw, kiboy, kairi, sanz, rezzz],
);