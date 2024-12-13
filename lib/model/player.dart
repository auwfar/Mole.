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