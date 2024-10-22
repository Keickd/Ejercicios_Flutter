import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';
import 'widgets.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        BaseScreen(),
      ],
    );
  }

  Future<Weather> fetchWeather(double latitude, double longitude) async {
    final response = await http.get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=${latitude.toDouble()}&lon=${longitude.toDouble()}&appid=5e22eb0700e2225ae27d5ac7923abbf7'),
    );
    if (response.statusCode == 200) {
      return Weather.fromJson(response.body);
    } else {
      throw Exception('Failed to get weather data');
    }
  }
}
