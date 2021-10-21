import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class Review extends StatelessWidget{

  String name = "Ivan Gonzalez";
  int age = 21;
  String pathImage = "assets/images/xd.jpg";
  bool isActive = false;
  int colorDesactivo = 0xffdc2c2c;
  int colorActivo = 0xffcdcdcd;

  Review(this.name, this.age, this.pathImage, this.isActive);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      // margin: EdgeInsets.only(top: 100.0, left: 20.0),
      width: 70.0,
      height: 70.0,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
        backgroundColor: Color(0xff46b9e7),
      ),
    );

    final photoMail = Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 50.0, right: 20.0, top: 15.0),
          height: 60.0,
          width: 60.0,
          child: Icon(Icons.circle, size: 60.0, color: Color(isActive ? colorActivo : colorDesactivo)),
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0, right: 20.0, top: 15.0),
          height: 60.0,
          width: 60.0,
          child: Icon(Icons.mail, size: 30.0, color: Color(isActive ? 0xFF5f5f5f : 0xFFefefef)),
        ),
      ],
    );

    final descriptionName = Container(
      width: 160.0,
      child: Text(name,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff1d1d1d)
          ),
      ),
    );

    final descriptionExperience = Text(
      "Experience: "+age.toString()+" years",
      style: TextStyle(
        fontFamily: "Lato",
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        color: Color(0xff616161),
        height: 2.0
      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        descriptionName,
        descriptionExperience,
      ],
    );

    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 20.0),
          child: photo
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, left: 25.0),
          child: userDetails,
        ),
        Container(
          // alignment: Alignment.lerp(Alignment.topLeft, Alignment.topRight, 2.0),
          child: photoMail,
        ),

      ],
    );
  }

}