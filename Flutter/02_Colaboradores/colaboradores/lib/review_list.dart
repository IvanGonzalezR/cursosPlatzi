import 'package:colaboradores/review.dart';
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("Ivan Gonzalez", 11, "assets/images/xd.jpg", false),
        Review("Rocholorrrrrrrrrrrrrrr", 8, "assets/images/person5.jpg", false),
        Review("Misael Adame", 2, "assets/images/person.jpg", true),
        Review("Jesus Lopez", 8, "assets/images/person2.jpg", false),
        Review("Manuel Alfaro", 1, "assets/images/person3.jpg", true),
        Review("Manuel RR", 28, "assets/images/person4.jpg", false),
        Review("Jose Luis C.", 10, "assets/images/person2.jpg", false),
        Review("Ivan Gonzalez", 21, "assets/images/person.jpg", false),
        Review("Ivan Gonzalez", 21, "assets/images/person3.jpg", false),
      ],
    );
  }

}