class Recipes {
  final String title;
  final String image;
  final String description;
  final double cal;
  final double prepTime;
  double rating;
  List<String> ingredients = [];

  Recipes({
    required this.title,
    required this.image,
    required this.description,
    required this.cal,
    required this.prepTime,
    this.ingredients = const [],
    this.rating = 0.0, // Default rating is set to 0.0
  });
}
