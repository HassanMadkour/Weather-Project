import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final GlobalKey<FormState> textKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          title: const Text(
            "Search a City",
            style: TextStyle(),
          )),
      body: Center(
        child: TextField(
          onSubmitted: (value) {
            var x = BlocProvider.of<GetWeatherCubit>(context); //trigger
            x.getWeather(value);
            Navigator.pop(context);
          },
          autocorrect: true,
          decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              labelText: "Search",
              hintText: "Enter City Name",
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder()),
        ),
      ),
    );
  }
}
