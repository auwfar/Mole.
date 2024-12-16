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
  image: "images/skylar.png",
  name: "Skylar",
  role: Role.gold,
);
var idok = Player(
  image: "images/idok.png",
  name: "Idok",
  role: Role.roamer,
);
var sutsujin = Player(
  image: "images/sutsujin.png",
  name: "Sutsujin",
  role: Role.jungler,
);
var rinz = Player(
  image: "images/rinz.png",
  name: "Rinz",
  role: Role.mid,
);
var dyrennn = Player(
  image: "images/dyrennn.png",
  name: "Dyrennn",
  role: Role.exp,
);
var cw = Player(
  image: "images/cw.png",
  name: "Cw",
  role: Role.gold,
);
var kiboy = Player(
  image: "images/kiboy.png",
  name: "Kiboy",
  role: Role.roamer,
);
var kairi = Player(
  image: "images/kairi.png",
  name: "Kairi",
  role: Role.jungler,
);
var sanz = Player(
  image: "images/sanz.png",
  name: "Sanz",
  role: Role.mid,
);
var rezzz = Player(
  image: "images/rezzz.png",
  name: "Rezzz",
  role: Role.exp,
);