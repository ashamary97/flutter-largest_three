import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:largest_threenumbers/screens/largestamongthree.dart';

void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Even or Odd"),
          backgroundColor: Colors.green,
        ),
        body: Check(),
      ),
    );
  }
}
