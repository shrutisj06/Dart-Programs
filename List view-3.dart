
//we can use list view instead of row and columns to make it scrollable.
import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(textDirection: TextDirection.ltr, child: ListView(
      padding: EdgeInsets.all(10.0),
      children:[
        Container(
            height:100,
            color: Colors.blueAccent,
            child:Center(
                child:Text(
                  "1",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 70),
                )
            )
        ),

        Container(
            height:100,
            color: Colors.pink,
            child:Center(
                child:Text(
                  "2",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 70),
                )
            )
        ),

        Container(
            height:100,
            color: Colors.teal,
            child:Center(
                child:Text(
                  "3",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 70),
                )
            )
        ),

        Container(
            child:Center(
                child:Text(
                  "4",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 70),
                )
            )
        ),

        Container(
            height:100,
            color: Colors.amber,
            child:Center(
                child:Text(
                  "5",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 70),
                )
            )
        ),
      ]
  ))
  );
}

