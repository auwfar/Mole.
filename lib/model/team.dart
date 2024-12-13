import 'coach.dart';
import 'player.dart';

class Team {
  String image;
  String name;
  Coach coach;
  List<Player> players;

  Team({required this.image, required this.name, required this.coach, required this.players});
}