import 'package:flutter/material.dart';

void main() {
  runApp(
    // Center(
    //     child:Text('hello flutter',
    //  textDirection: TextDirection.ltr,
    //  style: TextStyle(fontSize: 50))
      Container(padding:EdgeInsets.all(50.0),
          decoration:BoxDecoration(color: Colors.pinkAccent),
          child: Row(textDirection: TextDirection.ltr,
              children:[
                Text(
                  'one',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'two',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  'three',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 50),
                )

              ]
          )) );
}

