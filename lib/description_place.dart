import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final start_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611)
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611)
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      child: new Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final title_starts = Row(
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start_border
          ],
        ),
      ],
    );

    return Column(
      children: <Widget>[
        title_starts,
        description
      ],
    );
  }
}

