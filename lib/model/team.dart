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
);
var onic = Team(
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
);
var evos = Team(
  image: "images/evos.png",
  name: "Evos Glory",
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
);