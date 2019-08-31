import 'package:flutter/material.dart';
import 'dart:developer';

class FloatingActionButtonHeart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonHeart();
  }
}

class _FloatingActionButtonHeart extends State<FloatingActionButtonHeart> {

  bool _isFav = false;


  void onPressedFav() {
    setState(() {
      this._isFav = !this._isFav;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Agregaste a tus favoritos"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._isFav ? Icons.favorite : Icons.favorite_border
      )
    );
  }
}