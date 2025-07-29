import 'package:belajar_flutter/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanDua extends StatelessWidget {
  const LatihanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Roblos La Bobos Hermanos Jose',
      body: Center(
        child: SizedBox(
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Gamecard Continue
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-42275c434b3ccc1b3c5be6f7cd2f8b0a/256/256/Image/Webp/noFilter",
                    title: "Scorched Earth 🔊 (beta)",
                    likes: "85 %",
                    players: "240",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-1085db0a724fe00e62124bceb506a82e/256/256/Image/Webp/noFilter",
                    title: "Typical Colors 2 [Mobile Beta]",
                    likes: "80 %",
                    players: "1.3k",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-d305affe0dd1f6ef04010c5bcd700797/256/256/Image/Webp/noFilter",
                    title: "[BIG UPDATE] Anomic",
                    likes: "79 %",
                    players: "366",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-93f8de27e5546401db9214e7ed630844/256/256/Image/Webp/noFilter",
                    title: "Dummies Vs Noobs",
                    likes: "88 %",
                    players: "430",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-42275c434b3ccc1b3c5be6f7cd2f8b0a/256/256/Image/Webp/noFilter",
                    title: "Scorched Earth 🔊 (beta)",
                    likes: "85 %",
                    players: "240",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-1085db0a724fe00e62124bceb506a82e/256/256/Image/Webp/noFilter",
                    title: "Typical Colors 2 [Mobile Beta]",
                    likes: "80 %",
                    players: "1.3k",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-d305affe0dd1f6ef04010c5bcd700797/256/256/Image/Webp/noFilter",
                    title: "[BIG UPDATE] Anomic",
                    likes: "79 %",
                    players: "366",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-93f8de27e5546401db9214e7ed630844/256/256/Image/Webp/noFilter",
                    title: "Dummies Vs Noobs",
                    likes: "88 %",
                    players: "430",
                  ),
                  GameCard(
                    imageUrl: "https://tr.rbxcdn.com/180DAY-42275c434b3ccc1b3c5be6f7cd2f8b0a/256/256/Image/Webp/noFilter",
                    title: "Scorched Earth 🔊 (beta)",
                    likes: "85 %",
                    players: "240",
                  ),
                ],
              ),
              // GameCard
            ],
          ),
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String likes;
  final String players;

  const GameCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.likes,
    required this.players,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 200,
        child: Stack(
          children: [
          Container(width: 200, height: 500),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              top: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text(likes),
                      SizedBox(width: 8),
                      Icon(Icons.supervised_user_circle_sharp),
                      Text(players),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}