import 'package:flutter/material.dart';
import 'package:project/models/weather_model.dart';
import 'package:project/service/functions.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    required this.weatherModel,
    super.key,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Functions.getColorsTheme(weatherModel.weatherCondition)[500]!,
          Functions.getColorsTheme(weatherModel.weatherCondition)[300]!,
          Functions.getColorsTheme(weatherModel.weatherCondition)[50]!,
        ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(
            flex: 4,
          ),
          Column(
            children: [
              Text(
                weatherModel.cityName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "updated at ${weatherModel.weatherTime.hour} : ${weatherModel.weatherTime.minute}",
                style: const TextStyle(color: Colors.black87),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https:${weatherModel.conditionIcon}"),
              Text(
                "${weatherModel.currentTemp.round()}",
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                  "Maxtemp : ${weatherModel.maxTemp.round()} \nMinTemp : ${weatherModel.minTemp.round()}")
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            weatherModel.weatherCondition,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 4,
          ),
        ]));
  }
}
