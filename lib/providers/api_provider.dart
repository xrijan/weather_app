import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/current_weather_model.dart';
import 'package:weather_app/models/jock_model.dart';
import 'package:weather_app/services/jock_api_service.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/weather_api_service.dart'; // Importing JockModel



class ApiProvider extends ChangeNotifier {
  
  //get data model 
  JockModel? _jockModel;
  CurrenWeatherModel? _currenWeatherModel;

 //get backend services
  final JockApiService _jockApiService = JockApiService();
  final WeatherApiServices _weatherApiServices = WeatherApiServices();

 //provider
  JockModel? get jockModel => _jockModel; 
  CurrenWeatherModel? get currenWeatherModel => _currenWeatherModel;

  void initialize() {
    featchCurrentWeather();
    fetchJoke();
  }

  Future<void> featchCurrentWeather() async {
    try {
      final LocationService locationService = LocationService();
      Position? currentPosition = await locationService.getCurrentLocation();
      final jsonResponse = await _weatherApiServices.featchCurrentWeather(currentPosition.latitude.toString(),currentPosition.longitude.toString());
      _currenWeatherModel = CurrenWeatherModel.fromJson(jsonResponse);
      notifyListeners();
    } catch(e) {
      throw Exception('Failed to fetch weather: $e');
    }
  }

  Future<void> fetchJoke() async {
    try {
      final jsonResponse = await _jockApiService.fetchJoke();
      _jockModel = JockModel.fromJson(jsonResponse);
      notifyListeners();
    } catch (e) {
      // Enhance error message to provide more context
      throw Exception('Failed to fetch joke: $e');
    }
  }
}

