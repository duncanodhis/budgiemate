import 'package:flutter/material.dart';
import '../widgets/user_card.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final List<Map<String, dynamic>> dummyUsers = [
    {
      'name': 'Alice',
      'age': 24,
      'location': 'New York',
      'bio': 'Love hiking and exploring new places.',
      'imageUrl': 'https://via.placeholder.com/400x300',
    },
    {
      'name': 'Bob',
      'age': 27,
      'location': 'Los Angeles',
      'bio': 'Foodie and cinema lover.',
      'imageUrl': 'https://via.placeholder.com/400x300',
    },
  ];

  int currentIndex = 0;

  void nextUser(bool liked) {
    setState(() {
      if (liked) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("You liked the profile!")));
      }
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discover Matches')),
      body: currentIndex < dummyUsers.length
          ? UserCard(
              name: dummyUsers[currentIndex]['name'],
              age: dummyUsers[currentIndex]['age'],
              location: dummyUsers[currentIndex]['location'],
              bio: dummyUsers[currentIndex]['bio'],
              imageUrl: dummyUsers[currentIndex]['imageUrl'],
            )
          : const Center(
              child: Text("No more profiles to show"),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => nextUser(false),
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.close),
            ),
            FloatingActionButton(
              onPressed: () => nextUser(true),
              backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
