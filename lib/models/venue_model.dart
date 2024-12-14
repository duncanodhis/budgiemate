class VenueModel {
  final String id;
  final String name;
  final String category; // e.g., Restaurant, Cafe, Entertainment
  final String address;
  final double rating;
  final double budget;
  final String imageUrl; // Venue image URL

  VenueModel({
    required this.id,
    required this.name,
    required this.category,
    required this.address,
    required this.rating,
    required this.budget,
    required this.imageUrl,
  });

  factory VenueModel.fromMap(Map<String, dynamic> data) {
    return VenueModel(
      id: data['id'],
      name: data['name'],
      category: data['category'],
      address: data['address'],
      rating: data['rating']?.toDouble() ?? 0.0,
      budget: data['budget']?.toDouble() ?? 0.0,
      imageUrl: data['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'address': address,
      'rating': rating,
      'budget': budget,
      'imageUrl': imageUrl,
    };
  }
}
