enum Cuisine {
  AFRICAN,
  ASIAN,
  AMERICAN,
  BRITISH,
  CAJUN,
  CARIBBEAN,
  CHINESE,
  EASTERN_EUROPEAN,
  EUROPEAN,
  FRENCH,
  GERMAN,
  GREEK,
  INDIAN,
  IRISH,
  ITALIAN,
  JAPANESE,
  JEWISH,
  KOREAN,
  LATIN_AMERICAN,
  MEDITERRANEAN,
  MEXICAN,
  MIDDLE_EASTERN,
  NORDIC,
  SOUTHERN,
  SPANISH,
  THAI,
  VIETNAMESE;

  @override
  String toString() {
    return this.name.replaceAll("_", " ").toLowerCase();
  }
}
