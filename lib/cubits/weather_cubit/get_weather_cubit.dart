import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/weather_cubit/get_weather_states.dart';
import 'package:project/models/weather_model.dart';
import 'package:project/service/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weatherModel;
  getWeather(String cityName) async {
    try {
      emit(LoadingWeatherState());
      weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName);
      emit(LoadedWeatherState(weatherModel: weatherModel!));
    } catch (e) {
      emit(FailureWeatherState(e: e));
    }
  }
}
