import 'package:mole/model/team.dart';

class Standings {
  final Team team;
  final int matchWin;
  final int matchLose;
  final int gameWin;
  final int gameLose;

  Standings(this.team, this.matchWin, this.matchLose, this.gameWin, this.gameLose);
}

var standings = [
  Standings(rrq, 0, 0, 0, 0),
  Standings(onic, 0, 0, 0, 0),
  Standings(evos, 0, 0, 0, 0),
  Standings(ae, 0, 0, 0, 0),
  Standings(btr, 0, 0, 0, 0),
  Standings(dewa, 0, 0, 0, 0),
  Standings(geek, 0, 0, 0, 0),
  Standings(rbl, 0, 0, 0, 0),
  Standings(tlid, 0, 0, 0, 0),
];