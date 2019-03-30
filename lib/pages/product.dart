import 'package:flutter/material.dart';
import 'dart:async';

import '../widgets/ui_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final String location;

  ProductPage(
      this.title, this.description, this.imageUrl, this.price, this.location);

  Widget _buildPriceText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      TitleDefault(title),
      SizedBox(
        width: 8.0,
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(5.0)),
          child: Text('\$' + price.toString(),
              style: TextStyle(color: Colors.white)))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('back button pressed');
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: _buildPriceText(context)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Text(location),
                ),
                Container(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(description)),
              ]),
        ));
  }
}
