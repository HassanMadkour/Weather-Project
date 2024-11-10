import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/weather_cubit/get_weather_cubit.dart';
import 'package:project/cubits/weather_cubit/get_weather_states.dart';
import 'package:project/views/search_view.dart';
import 'package:project/widget/weather_info.dart';
import 'package:project/widget/no_weather_info.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          primary: true,
          title: const Text(
            "Weather App",
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchView(),
                      ));
                },
                icon: const Icon(
                  Icons.search,
                ))
          ],
        )),
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is LoadedWeatherState) {
              return WeatherInfo(
                weatherModel: state.weatherModel,
              );
            } else if (state is FailureWeatherState) {
              return Center(child: Text("${state.e}"));
            } else if (state is LoadingWeatherState) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const NoWeatherInfo();
            }
          },
        ));
  }
}
