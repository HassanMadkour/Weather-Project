import 'package:flutter/material.dart';

class Functions {
  static MaterialColor getColorsTheme(String? value) {
    if (value == null) {
      return Colors.blue;
    }
    switch (value) {
      case "Sunny":
        return Colors.orange;
      case "Partly cloudy":
        return Colors.indigo;
      case "Cloudy":
        return Colors.grey;
      case "Overcast":
        return Colors.grey;
      case "Mist":
        return Colors.grey;
      case "Patchy rain possible":
        return Colors.blue;
      case "Patchy snow possible":
      case "Patchy sleet possible":
        return Colors.lightBlue;
      case "Patchy freezing drizzle possible":
        return Colors.lightBlue;
      case "Thundery outbreaks possible":
        return Colors.deepPurple;

      case "Fog":
        return Colors.grey;
      case "Freezing fog":
        return Colors.grey;
      case "Patchy light drizzle":
        return Colors.lightBlue;
      case "Light drizzle":
        return Colors.lightBlue;
      case "Freezing drizzle":
        return Colors.lightBlue;
      case "Heavy freezing drizzle":
        return Colors.lightBlue;
      case "Patchy light rain":
        return Colors.lightBlue;
      case "Light rain":
        return Colors.lightBlue;
      case "Moderate rain at times":
        return Colors.lightBlue;
      case "Moderate rain":
        return Colors.lightBlue;
      case "Heavy rain at times":
        return Colors.lightBlue;
      case "Heavy rain":
        return Colors.lightBlue;
      case "Light freezing rain":
        return Colors.lightBlue;
      case "Moderate or heavy freezing rain":
        return Colors.lightBlue;
      case "Light sleet":
        return Colors.lightBlue;
      case "Moderate or heavy sleet":
        return Colors.lightBlue;

      case "Ice pellets":
        return Colors.grey;
      case "Light rain shower":
        return Colors.lightBlue;
      case "Moderate or heavy rain shower":
        return Colors.lightBlue;
      case "Torrential rain shower":
        return Colors.lightBlue;
      case "Light sleet showers":
        return Colors.lightBlue;
      case "Moderate or heavy sleet showers":
        return Colors.lightBlue;

      case "Light showers of ice pellets":
        return Colors.grey;
      case "Moderate or heavy showers of ice pellets":
        return Colors.grey;
      case "Patchy light rain with thunder":
        return Colors.lightBlue;
      case "Moderate or heavy rain with thunder":
        return Colors.lightBlue;

      default:
        return Colors.blue;
    }
  }
}
