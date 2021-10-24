class Today {
  final String condition;
  final String windSpeed;
  final String temparature;
  final String humidity;

  Today(
      {required this.condition,
      required this.windSpeed,
      required this.temparature,
      required this.humidity});
}

Today today = Today(
    condition: "Cloudy",
    windSpeed: "234",
    temparature: "30 C",
    humidity: "25%");
