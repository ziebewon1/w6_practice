import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Hobbies'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 10,
              children: [
                HobbyCard(
                  title: 'Travelling',
                  icon: Icons.travel_explore,
                  backgroundColor: Colors.green,
                ),

                HobbyCard(
                  title: 'Skating',
                  icon: Icons.skateboarding,
                  backgroundColor: Colors.grey,
                ),
              ]
            )
          )
        ), // YOUR CODE
      ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center (
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            Text(title, style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            )),
          ],
        )
      )
    );
  }
}

