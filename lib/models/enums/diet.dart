enum Diet {
  GLUTEN_FREE,
  KETOGENIC,    VEGETARIAN,
  VEGAN;

  @override
  String toString() {
    return this.name.replaceAll("_", " ").toLowerCase();
  }
}
