import 'package:flutter/material.dart';
import '../widgets/venue_card.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> venues = const [
    {
      'name': 'The Coffee House',
      'category': 'Cafe',
      'rating': 4.5,
      'imageUrl': 'https://via.placeholder.com/400x200',
    },
    {
      'name': 'Budget Bites',
      'category': 'Restaurant',
      'rating': 4.0,
      'imageUrl': 'https://via.placeholder.com/400x200',
    },
    {
      'name': 'Local Theater',
      'category': 'Entertainment',
      'rating': 4.2,
      'imageUrl': 'https://via.placeholder.com/400x200',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discover Venues')),
      body: ListView.builder(
        itemCount: venues.length,
        itemBuilder: (context, index) {
          final venue = venues[index];
          return VenueCard(
            name: venue['name'],
            category: venue['category'],
            rating: venue['rating'],
            imageUrl: venue['imageUrl'],
          );
        },
      ),
    );
  }
}
