import 'package:flutter/material.dart';

import 'counter_list.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyCounterPage(title:'Counter List'),
    );
  }
}
