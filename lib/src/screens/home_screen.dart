import 'dart:math';

import 'package:colored/src/widgets/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _random = Random();
  Color? _randomColor;
  void _generatingColor() {
    setState(() {
      _randomColor = Color.fromARGB(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256)
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Menu(),
      body: GestureDetector(
        onTap: _generatingColor,
        child: Container(
          color: _randomColor ?? Colors.white,
          child: Center(
            child: Text("Hey there", style: TextStyle(fontSize: 30
                , fontWeight: FontWeight.w500),),
          ),
        ),
      ),
    );
  }
}