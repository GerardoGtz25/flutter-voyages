import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/profile.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/profile1.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/profile2.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/profile3.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka")
      ],
    );
  }
}