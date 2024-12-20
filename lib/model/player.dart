class Player {
  String image;
  String name;
  Role role;

  Player({required this.image, required this.name, required this.role});
}

enum Role {
  jungler("Jungler"),
  roamer("Roam"),
  mid("Mid Lane"),
  exp("Exp Lane"),
  gold("Gold Lane");

  final String name;

  const Role(this.name);
}

var skylar = Player(
  image: "images/players/skylar.png",
  name: "Skylar",
  role: Role.gold,
);
var idok = Player(
  image: "images/players/idok.png",
  name: "Idok",
  role: Role.roamer,
);
var sutsujin = Player(
  image: "images/players/sutsujin.png",
  name: "Sutsujin",
  role: Role.jungler,
);
var rinz = Player(
  image: "images/players/rinz.png",
  name: "Rinz",
  role: Role.mid,
);
var dyrennn = Player(
  image: "images/players/dyrennn.png",
  name: "Dyrennn",
  role: Role.exp,
);
var cw = Player(
  image: "images/players/cw.png",
  name: "Cw",
  role: Role.gold,
);
var kiboy = Player(
  image: "images/players/kiboy.png",
  name: "Kiboy",
  role: Role.roamer,
);
var kairi = Player(
  image: "images/players/kairi.png",
  name: "Kairi",
  role: Role.jungler,
);
var sanz = Player(
  image: "images/players/sanz.png",
  name: "Sanz",
  role: Role.mid,
);
var rezzz = Player(
  image: "images/players/rezzz.png",
  name: "Rezzz",
  role: Role.exp,
);