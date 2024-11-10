import 'package:dio/dio.dart';
import 'package:project/models/weather_model.dart';

class WeatherService {
  WeatherService(this.dio);

  final Dio dio;
  String baseLine = "http://api.weatherapi.com/v1";
  String apiKey = "67ca4093f901440ba8802807241702";

  Future<WeatherModel> getCurrentWeather(String cityName) async {
    try {
      Response response = await dio.get(
        "$baseLine/forecast.json?key=$apiKey&q=$cityName&days=1",
      );

      return WeatherModel.formJson(response.data);
    } on DioException catch (e) {
      String error = e.response?.data["error"]["message"] ??
          "Ops something wrong , try again later";
      throw Exception(error);
    } catch (e) {
      throw Exception(e);
    }
  }
}
