class ConstanceData {
  // ignore: non_constant_identifier_names
  static const String BaseImageUrl = "assets/images/";

  static const man = BaseImageUrl + "man.png";
  static const cloudy = BaseImageUrl + "cloudy.png";
  static const stormy = BaseImageUrl + "storm.png";

  ///
  static const String BaseLottieUrl = "assets/json/";

  static const ladyUmberlla = BaseLottieUrl + "36561-rain-and-windy.json";

  ///
  static final apiKey = "YOUR API KEY";
  static final String baseUrl =
      "api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}";

  ///
  static final kohoRegular = "Koho";
  static final kohoBold = "Koho Bold";

  ///
  static const Duration kDuration = Duration(milliseconds: 300);
}
