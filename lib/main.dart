import 'package:flutter/material.dart';
import 'package:practice_weatherapi_kokorin/screens/weather_forecast_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: WeatherForecastScreen(),
    );
  }
}


