import 'package:counter_my_app/src/features/counter/models/counter.dart';
import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  final _countlist = <Counter>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    actions: [
    IconButton(
    onPressed: () {
    setState(() {_countlist.clear();
    });
    },
    icon: Icon(Icons.delete),
    )
    ],
    ),

    body:
