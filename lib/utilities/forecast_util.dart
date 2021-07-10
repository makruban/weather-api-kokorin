import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class Util {
  static String getFormatedDate(DateTime dataTime) {
    return DateFormat('EEEE, MMM d, y').format(dataTime);
  }

  static getItem(IconData iconData, int value, String units) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.black87,
          size: 28.0,
        ),
        SizedBox(height: 10.0),
        Text(
          '$value',
          style: TextStyle(fontSize: 20.0, color: Colors.black87),
        ),
        SizedBox(height: 10.0),
        Text(
          '$units',
          style: TextStyle(fontSize: 15.0, color: Colors.black87),
        )
      ],
    );
  }
}
