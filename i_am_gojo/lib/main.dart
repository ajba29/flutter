import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('The Honored One'),
          backgroundColor: Colors.lightBlue
        ),
        body: Image(
            image: AssetImage('images/GOJO.png')
          ),
        )
    )
  );
}
