import 'package:flutter/material.dart';
import 'package:practice_weatherapi_kokorin/models/weather_forecast_daily.dart';
import 'package:intl/intl.dart';
import 'package:practice_weatherapi_kokorin/utilities/forecast_util.dart';
class CityView extends StatelessWidget {

  final AsyncSnapshot<WeatherForecast> snapshot;
  const CityView({required this.snapshot});
  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
     String? city = snapshot.data!.city!.name;
    var country = snapshot.data!.city!.country;
    var formattedDate = DateTime.fromMillisecondsSinceEpoch(forecastList![0].dt! * 1000);
    return Container(
      child: Column(
        children: [
          Text('$city $country',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: Colors.black87
          ),),
          Text('${Util.getFormatedDate(formattedDate)}',
          style: TextStyle(
            fontSize: 15.0,
          ),)
        ],
      ),
    );
  }
}
