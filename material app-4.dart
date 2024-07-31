import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      title:'flutter',
      home:Container(
        decoration: BoxDecoration(color: Colors.black),
        child:Center(
          child:Text(
            'Material app',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.purple),

          ),
        )
      )
    )
  );
}