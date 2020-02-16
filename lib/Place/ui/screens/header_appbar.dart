import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/gradient_back.dart';
import 'package:flutter_course/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido", 250.0),
        CardImageList()
      ],
    );
  }

}