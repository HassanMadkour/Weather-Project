class WeatherModel {
  String cityName;
  DateTime weatherTime;
  String conditionIcon;
  num maxTemp;
  num minTemp;
  num currentTemp;
  String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.currentTemp,
    required this.conditionIcon,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
    required this.weatherTime,
  });

  factory WeatherModel.formJson(Map<String, dynamic> weatherInfo) {
    return WeatherModel(
        cityName: weatherInfo["location"]["name"],
        currentTemp: weatherInfo["current"]["temp_c"],
        conditionIcon: weatherInfo["current"]["condition"]["icon"],
        maxTemp: weatherInfo["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: weatherInfo["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        weatherCondition: weatherInfo["current"]["condition"]["text"],
        weatherTime: DateTime.parse(weatherInfo["current"]["last_updated"]));
  }
}
