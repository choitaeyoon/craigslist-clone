import 'package:flutter/material.dart';

class LocationTag extends StatelessWidget{
  final String location;
  LocationTag(this.location);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(4.0)),
            child: Text(location),
          );
  }
}