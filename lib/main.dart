import 'package:flutter/material.dart';
import 'package:counter_my_app/src/features/counter/ui/counter_edit.dart';
import 'package:counter_my_app/src/features/counter/ui/home_page.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter App',
      home: CounterHomePage(),
    );
  }
}