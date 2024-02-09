import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/api_provider.dart';
import 'package:weather_app/services/weather_api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApiServices weatherApiServices = WeatherApiServices();
  // final LocationService _locationService = LocationService();
  // Position? _currentPosition;
  
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _getCurrentLocation();
  // }

  //  _getCurrentLocation() async {
  //   Position? position = await _locationService.getCurrentLocation();
  //   setState(() {
  //     _currentPosition = position;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
    onPressed: () { 
          apiProvider.fetchJoke();
          // weatherApiServices.featchCurrentWeather('12.783370', '77.641187');
          print(apiProvider.currenWeatherModel?.coord.lat);
          },
      ),
      body: Center(
        child: apiProvider.jockModel != null &&
                apiProvider.jockModel!.joke != 'NA'
            ? Text(apiProvider.jockModel!.joke)
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(apiProvider.jockModel?.setup ?? 'NA'), // Use null-aware operators
                  Text(apiProvider.jockModel?.delivery ?? 'NA'), // Use null-aware operators
                ],
              ),
      ),
    );
  }
}

