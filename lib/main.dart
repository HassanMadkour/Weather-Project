import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:project/cubits/weather_cubit/get_weather_states.dart';
import 'package:project/service/functions.dart';
import 'package:project/views/home_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) => BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Functions.getColorsTheme(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.weatherCondition),
            ),
            home: const Homepage(),
          );
        },
      ));
}
