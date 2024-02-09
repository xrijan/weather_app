import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_app/utils/constant.dart';

class WeatherApiServices {
  Future<Map<String, dynamic>> featchCurrentWeather(String lat , String lon) async {
    final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${Constant.weatherApiKey}'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather api: ${response.statusCode}');
    }
  }
}
