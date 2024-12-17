import 'package:flutter/material.dart';
import 'package:mole/model/match.dart';

class MatchDetailSection extends StatelessWidget {
  final Match match;

  const MatchDetailSection({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 4),
          Container(
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Channel Youtube',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "FonceSans",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: match.channels.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      var channel = match.channels[index];
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(4)),
                            child: Container(
                              color: Colors.red,
                              child: const Icon(
                                Icons.play_arrow_rounded,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              channel.name,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "NimbusSanL",
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Container(
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_month_rounded,
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tanggal dan waktu",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "FonceSans",
                            ),
                          ),
                          Text(
                            "${match.date} ${match.time}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: "NimbusSanL",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        match.competition.image,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Kompetisi",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontFamily: "FonceSans",
                            ),
                          ),
                          Text(
                            match.competition.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: "NimbusSanL",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
