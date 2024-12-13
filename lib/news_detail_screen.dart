import 'package:flutter/material.dart';
import 'model/news.dart';

class NewsDetailScreen extends StatelessWidget {
  final News news;

  const NewsDetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE5E5E5)),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 20,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Berita Populer",
                      style: TextStyle(fontFamily: "FonceSans", fontSize: 16),
                    ),
                  ),
                  const FavoriteButton()
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          news.title,
                          style: const TextStyle(
                            fontFamily: "NimbusSanL",
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                          top: 8,
                          bottom: 16,
                        ),
                        child: Text(
                          "${news.authorCode}  •  ${news.time}",
                          style: const TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontFamily: "NimbusSanL",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          child: Image.network(
                            news.image,
                            width: double.infinity,
                            height: 260,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 16,
                        ),
                        child: Text(
                          news.content,
                          style: const TextStyle(
                            fontFamily: "NimbusSanL",
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE5E5E5)),
          shape: BoxShape.circle,
        ),
        child: Icon(
          (isFavorite) ? Icons.favorite : Icons.favorite_border,
          size: 20,
        ),
      ),
    );
  }
}
