import 'package:flutter/material.dart';
import 'package:practice_weatherapi_kokorin/utilities/forecast_util.dart';

Widget forecastCard(AsyncSnapshot snapshot, int index){
  var forecastList = snapshot.data.list;
  DateTime date = DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormatedDate(date);
  var dayOfWeek = '';
  dayOfWeek = fullDate.split(',')[0];
  var tempMin = forecastList[index].temp.min.toStringAsFixed(0);
  var icon = forecastList[index].getIconUrl();
return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          dayOfWeek,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),

      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$tempMin C',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),),
                Image.network(icon, scale: 1.2, color: Colors.white),


              ],
            )
          ],
        )
      ],
    )
  ],
);
}