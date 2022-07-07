import 'package:flutter/material.dart';

class CounterListScreen extends StatelessWidget {

  int number;
  CounterListScreen(this.number);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter List'), backgroundColor: Colors.pink,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$number', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0)),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();},
        label: const Text('Создать еще счетчик'),
        backgroundColor: Colors.pink,
        icon: Icon(Icons.add),
      ),
    );
  }
}
