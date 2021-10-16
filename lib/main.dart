import 'package:flutter/material.dart';
import 'package:udemy_app_dz1/weather_forcast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const WeatherForcast(),
        theme: ThemeData(
          primaryColor: Colors.red,
          iconTheme: const IconThemeData(color: Colors.white),
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: Colors.red,
          colorScheme: const ColorScheme.light(
              secondary: Colors.red,
              primary: Colors.red,
              background: Colors.red,
              surface: Colors.red,
              onPrimary: Colors.red),
        ));
  }
}
