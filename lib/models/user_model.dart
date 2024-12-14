class UserModel {
  final String id;
  final String name;
  final int age;
  final String location;
  final String bio;
  final List<String> photos; // List of photo URLs
  final List<String> interests;
  final double budgetMin; // Preferred budget range
  final double budgetMax;
  final bool flexibleBudget; // Flexibility option
  final bool splitPreference; // Willing to split the bill
  final int profileCompletion;

  UserModel({
    required this.id,
    required this.name,
    required this.age,
    required this.location,
    required this.bio,
    required this.photos,
    required this.interests,
    required this.budgetMin,
    required this.budgetMax,
    required this.flexibleBudget,
    required this.splitPreference,
    required this.profileCompletion,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      age: data['age'],
      location: data['location'],
      bio: data['bio'],
      photos: List<String>.from(data['photos'] ?? []),
      interests: List<String>.from(data['interests'] ?? []),
      budgetMin: data['budgetMin']?.toDouble() ?? 0.0,
      budgetMax: data['budgetMax']?.toDouble() ?? 0.0,
      flexibleBudget: data['flexibleBudget'] ?? false,
      splitPreference: data['splitPreference'] ?? false,
      profileCompletion: data['profileCompletion'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'location': location,
      'bio': bio,
      'photos': photos,
      'interests': interests,
      'budgetMin': budgetMin,
      'budgetMax': budgetMax,
      'flexibleBudget': flexibleBudget,
      'splitPreference': splitPreference,
      'profileCompletion': profileCompletion,
    };
  }
}
