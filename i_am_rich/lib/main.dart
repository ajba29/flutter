import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,

        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.lightBlueAccent
        ),

        body: Center(
          child: Image(
            image: AssetImage('images/money.jpg'),
          ),
        ),
      )
    )
  );
}