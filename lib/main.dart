// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_bar_assignment/reset.dart';
import 'package:app_bar_assignment/appBar.dart';
import 'package:app_bar_assignment/textchange.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _namesIndex = 0;
  final _names = const ['Awwal', 'Leo', 'Dark', 'Scholar', 'trendy', 'monkey'];

  void _change() {
    setState(() {
      _namesIndex += 1;
      print(_namesIndex);
    });
  }

  void _reset() {
    setState(() {
      _namesIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mainText = _names[_namesIndex];
    return MaterialApp(
      home: Scaffold(
        appBar: NewAppBar(
          text: mainText,
        ),
        body: _namesIndex < _names.length
            ? Change(mainText: mainText, change: _change)
            : Reset(reset: _reset),
      ),
    );
  }
}
