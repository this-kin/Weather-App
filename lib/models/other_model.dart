import 'package:weather_app/utils/constance.dart';

class Other {
  final String city;
  final String minTemp;
  final String wind;
  final String maxTemp;
  final String image;

  Other({
    required this.city,
    required this.minTemp,
    required this.wind,
    required this.maxTemp,
    required this.image,
  });
}

Other firstModel = Other(
  city: 'Wonogiri',
  maxTemp: '30°C',
  minTemp: '30°C',
  wind: '234 km/h',
  image: ConstanceData.cloudy,
);

Other secondModel = Other(
  city: 'Boyolali',
  maxTemp: '30°C',
  minTemp: '30°C',
  wind: '234 km/h',
  image: ConstanceData.cloudy,
);

List<Other> allOther = [firstModel, secondModel];
