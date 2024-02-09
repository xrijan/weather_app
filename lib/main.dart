import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/api_provider.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/utils/theme.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ApiProvider()..initialize()),
    // Add more providers if needed
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Application',
      theme: AppTheme.themeData,
      home: const HomeScreen(),
    );
  }
}


