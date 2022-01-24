class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get totalNoOfRating => ratings.length;
  // set totalNo
  double averageRating() {
    return ratings.isEmpty
        ? 0
        : ratings.reduce((value, element) => value + element) / ratings.length;
  }
}
