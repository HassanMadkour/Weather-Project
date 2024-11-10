import 'package:project/models/weather_model.dart';

class GetWeatherState {}

class LoadedWeatherState extends GetWeatherState {
  LoadedWeatherState({required this.weatherModel});
  final WeatherModel weatherModel;
}

class LoadingWeatherState extends GetWeatherState {}

class NoWeatherState extends GetWeatherState {}

class FailureWeatherState extends GetWeatherState {
  FailureWeatherState({required this.e});
  final Object e;
}
