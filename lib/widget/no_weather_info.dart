import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          "there is no weather  \uD83D\uDE00 start Searching now \u{1F50D} "),
    );
  }
}
