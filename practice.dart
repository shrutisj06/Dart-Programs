import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: Center(
      child: Container(
        height: 300,
        width: 150,
        padding: EdgeInsets.all(30.0),
        color: Colors.black,
        child: Center(
          child: Text(
            'i am learning flutter',
            style: TextStyle(fontSize: 32,color: Colors.pink,fontWeight:FontWeight.bold),
          ),
        ),
      ),
    ),
  )

  );
}