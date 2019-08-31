import 'package:flutter/material.dart';
import 'package:flutter_course/description_place.dart';
import 'package:flutter_course/review_list.dart';
import 'package:flutter_course/header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dignissim, nisl vitae eleifend pulvinar, dui lacus feugiat ipsum, eu sodales nisi diam sodales ipsum. Nunc blandit urna arcu, commodo efficitur dolor consectetur sed. Duis nec mollis tortor, vel ullamcorper nullam.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, text),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}