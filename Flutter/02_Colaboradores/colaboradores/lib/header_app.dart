import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget{

  String texto = "  Colaboradores";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(top: 25.0, left: 10.0),
      height: 100.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff46b9e7),Color(0xff33c6a9)],
              begin: FractionalOffset(-0.3, 0.0),
              end: FractionalOffset(1.2, 1),
              stops: [0.2,1],
              tileMode: TileMode.decal
          )
      ),
      child: Row(children: [
        Icon(Icons.arrow_back_rounded, size:35.0, color: Colors.white,),
        Text(
          texto,
          style: TextStyle(
              color: Color(0xFFffffff),
              fontSize: 28.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w600
          ),
        ),
      ],

      )

    );;
  }

}