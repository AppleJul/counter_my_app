import 'package:flutter/material.dart';
import 'package:counter_my_app/src/features/counter/ui/counter_edit.dart';

class CounterHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter List', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0)),
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: const Center(child: Text('Hello! \nThis is a counter. Press the button', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CounterScreenState()));},
        label: const Text('Press'),
        backgroundColor: Colors.pink,
        icon: Icon(Icons.add),
      ),
    );

  }
}