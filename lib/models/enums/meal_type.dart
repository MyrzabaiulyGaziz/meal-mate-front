enum MealType {
  MAIN_COURSE,
  SIDE_DISH,    DESSERT,
  APPETIZER,    SALAD,
  BREAD,    BREAKFAST,
  SOUP,    BEVERAGE,
  SAUCE,    MARINADE,
  FINGERFOOD,    SNACK,
  DRINK;


  @override
  String toString() {
    return this.name.replaceAll("_", " ").toLowerCase();
  }
}
