import 'dart:developer';
import 'dart:convert';
import 'package:practice_weatherapi_kokorin/models/weather_forecast_daily.dart';
import 'package:practice_weatherapi_kokorin/utilities/constants.dart';
import 'package:http/http.dart' as http;

class WeatherApi{
 Future<WeatherForecast> fetchWeatherForecastWithCity({required String cityName}) async {
  var queryParametrs = {
   'APPID' : Constants.WEATHER_APP_ID,
   'units' : 'metric',
   'q' : cityName,
  };
  var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN, Constants.WEATHER_FORECAST_PATH, queryParametrs);
  log('request: ${uri.toString()}');
  http.Response response = await http.get(uri);
// await Future.delayed(Duration(seconds: 15));
  print('response: ${response.body}');
   // throw Exception ('Error response');
  if (response.statusCode == 200){
   return WeatherForecast.fromJson(json.decode(response.body));
  } else {
   throw Exception ('Error response');
  }
 }
}