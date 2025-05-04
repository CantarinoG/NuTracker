class Meal {
  final String name;
  final DateTime dateTime;
  final double calories;
  final double carbohydrates;
  final double proteins;
  final double totalFats;
  final double saturatedFats;
  final double fiber;
  final double addedSugar;
  final double alcohol;

  const Meal({
    required this.name,
    required this.dateTime,
    required this.calories,
    required this.carbohydrates,
    required this.proteins,
    required this.totalFats,
    required this.saturatedFats,
    required this.fiber,
    required this.addedSugar,
    required this.alcohol,
  });
}
