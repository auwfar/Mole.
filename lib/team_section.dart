import 'package:flutter/material.dart';
import 'package:mole/model/team.dart';
import 'package:mole/model/match.dart';
import 'model/player.dart';

class TeamSection extends StatefulWidget {
  final Match match;

  const TeamSection({super.key, required this.match});

  @override
  State<TeamSection> createState() => _TeamSectionState();

}

class _TeamSectionState extends State<TeamSection> {
  late Team selectedTeam;
  late List<Team> teams = [widget.match.team1, widget.match.team2];

  @override
  void initState() {
    selectedTeam = widget.match.team1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  offset: const Offset(0, -2),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pilih Tim',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "FonceSans",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DropdownButton<Team>(
                    value: selectedTeam,
                    onChanged: (Team? newValue) {
                      setState(() {
                        selectedTeam = newValue!;
                      });
                    },
                    items: teams.map<DropdownMenuItem<Team>>((Team value) {
                      return DropdownMenuItem<Team>(
                        value: value,
                        child: Text(
                          value.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: "NimbusSanL",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
          TeamInfoSection(team: selectedTeam)
        ],
      ),
    );
  }
}

class TeamInfoSection extends StatelessWidget {
  final Team team;
  const TeamInfoSection({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    final Player goldLanePlayer = team.players.firstWhere((player) => player.role == Role.gold);
    final Player expLanePlayer = team.players.firstWhere((player) => player.role == Role.exp);
    final Player midLanePlayer = team.players.firstWhere((player) => player.role == Role.mid);
    final Player junglerPlayer = team.players.firstWhere((player) => player.role == Role.jungler);
    final Player roamerPlayer = team.players.firstWhere((player) => player.role == Role.roamer);

    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 3),
            blurRadius: 10,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            offset: const Offset(0, -2),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final mapWidth = constraints.maxWidth;
              final mapHeight = mapWidth * 0.5625;
              double scalableValue(double value) {
                return value * mapWidth / 400;
              }
              return Stack(
                children: [
                  SizedBox(
                    width: mapWidth,
                    height: mapHeight,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Image.asset(
                        "images/maps_ml.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.15 * mapHeight,
                    left: 0.02 * mapWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1.0,
                          colors: [
                            Color.fromRGBO(255, 223, 0, 0.3),
                            Color.fromRGBO(255, 215, 0, 0.1),
                            Color.fromRGBO(255, 215, 0, 0.0),
                          ],
                          stops: [0.0, 0.7, 1.0],
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: scalableValue(76),
                                child: Text(
                                  goldLanePlayer.name,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontFamily: "FonceSans",
                                    fontSize: scalableValue(12),
                                  ),
                                ),
                              ),
                              Text(
                                goldLanePlayer.role.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "FonceSans",
                                  fontSize: scalableValue(10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: scalableValue(4)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: scalableValue(2),
                                color: Colors.yellow,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: scalableValue(20),
                              backgroundImage: AssetImage(
                                goldLanePlayer.image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.38 * mapHeight,
                    left: 0.06 * mapWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1.0,
                          colors: [
                            Color.fromRGBO(99, 248, 234, 0.3),
                            Color.fromRGBO(99, 248, 234, 0.1),
                            Color.fromRGBO(99, 248, 234, 0.0),
                          ],
                          stops: [0.0, 0.7, 1.0],
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: scalableValue(76),
                                child: Text(
                                  roamerPlayer.name,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "FonceSans",
                                    fontSize: scalableValue(12),
                                  ),
                                ),
                              ),
                              Text(
                                roamerPlayer.role.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "FonceSans",
                                  fontSize: scalableValue(10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: scalableValue(4)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: scalableValue(2),
                                color: Colors.lightBlue,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: scalableValue(20),
                              backgroundImage: AssetImage(
                                roamerPlayer.image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.6 * mapHeight,
                    left: 0.24 * mapWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1,
                          colors: [
                            Color.fromRGBO(99, 248, 234, 0.3),
                            Color.fromRGBO(99, 248, 234, 0.1),
                            Color.fromRGBO(99, 248, 234, 0.0),
                          ],
                          stops: [0.0, 0.7, 1.0],
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: scalableValue(76),
                                child: Text(
                                  junglerPlayer.name,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "FonceSans",
                                    fontSize: scalableValue(12),
                                  ),
                                ),
                              ),
                              Text(
                                junglerPlayer.role.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "FonceSans",
                                  fontSize: scalableValue(10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: scalableValue(4)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: scalableValue(2),
                                color: Colors.lightBlue,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: scalableValue(20),
                              backgroundImage: AssetImage(
                                junglerPlayer.image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.35 * mapHeight,
                    left: 0.45 * mapWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1.0,
                          colors: [
                            Color.fromRGBO(99, 248, 234, 0.3),
                            Color.fromRGBO(99, 248, 234, 0.1),
                            Color.fromRGBO(99, 248, 234, 0.0),
                          ],
                          stops: [0.0, 0.7, 1.0],
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: scalableValue(2),
                                color: Colors.lightBlue,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: scalableValue(20),
                              backgroundImage: AssetImage(
                                midLanePlayer.image,
                              ),
                            ),
                          ),
                          SizedBox(width: scalableValue(4)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: scalableValue(76),
                                child: Text(
                                  midLanePlayer.name,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "FonceSans",
                                    fontSize: scalableValue(12),
                                  ),
                                ),
                              ),
                              Text(
                                midLanePlayer.role.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "FonceSans",
                                  fontSize: scalableValue(10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.7 * mapHeight,
                    left: 0.65 * mapWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1.0,
                          colors: [
                            Color.fromRGBO(135, 88, 255, 0.3),
                            Color.fromRGBO(135, 88, 255, 0.1),
                            Color.fromRGBO(135, 88, 255, 0.0),
                          ],
                          stops: [0.0, 0.7, 1.0],
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: scalableValue(2),
                                color: const Color(0xFF874AFF),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: scalableValue(20),
                              backgroundImage: AssetImage(
                                expLanePlayer.image,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: scalableValue(76),
                                child: Text(
                                  expLanePlayer.name,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: const Color(0xFFF0E7FF),
                                    fontFamily: "FonceSans",
                                    fontSize: scalableValue(12),
                                  ),
                                ),
                              ),
                              Text(
                                expLanePlayer.role.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "FonceSans",
                                  fontSize: scalableValue(10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      team.coach.image,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      team.coach.name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontFamily: "FonceSans",
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Coach",
                      style: TextStyle(
                        fontFamily: "FonceSans",
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}