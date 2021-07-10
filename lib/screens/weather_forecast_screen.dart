import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:practice_weatherapi_kokorin/api/weather_api.dart';
import 'package:practice_weatherapi_kokorin/models/weather_forecast_daily.dart';
import 'package:practice_weatherapi_kokorin/screens/city_screen.dart';
import 'package:practice_weatherapi_kokorin/widgets/bottom_list_view.dart';
import 'package:practice_weatherapi_kokorin/widgets/city_view.dart';
import 'package:practice_weatherapi_kokorin/widgets/detail_view.dart';
import 'package:practice_weatherapi_kokorin/widgets/temp_view.dart';

class WeatherForecastScreen extends StatefulWidget {
  const WeatherForecastScreen({Key? key}) : super(key: key);

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  Future<WeatherForecast>? forecastObject;
  String _cityName = 'London';

  // String _cityName;
  void initState() {
    super.initState();
    forecastObject =
        WeatherApi().fetchWeatherForecastWithCity(cityName: _cityName);

    // forecastObject?.then((weather) {
    //   print(weather.list?[0].weather?[0].main);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('openweathermap.org'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.my_location),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var tappedName = await Navigator.push(context, MaterialPageRoute(builder: (context){return CityScreen();}));
              if(tappedName != null){
                setState(() {
                  _cityName = tappedName;
                forecastObject = WeatherApi().fetchWeatherForecastWithCity(cityName: _cityName);

                });

              }
            },
            icon: Icon(Icons.location_city, color: Colors.white,),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: FutureBuilder<WeatherForecast>(
              future: forecastObject,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CityView(snapshot: snapshot),
                      SizedBox(
                        height: 50.0,
                      ),
                      TempView(snapshot: snapshot),
                      SizedBox(
                        height: 50.0,
                      ),
                      DetailView(snapshot: snapshot),
                      SizedBox(height: 50.0),
                      BottomListView(snapshot: snapshot),
                    ],
                  );
                } else {
                  return Center(
                    child: SpinKitDoubleBounce(
                      color: Colors.black87,
                      size: 100.0,
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
