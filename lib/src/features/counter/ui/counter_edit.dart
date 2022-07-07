import 'package:counter_my_app/src/features/counter/ui/counter_list.dart';
import 'package:flutter/material.dart';
import 'package:counter_my_app/src/features/counter/ui/home_page.dart';
import 'package:counter_my_app/main.dart';


class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {

  int _count = 0;
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }

  void _decrementCount(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Counter'), backgroundColor: Colors.pink,),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.remove),
              backgroundColor: Colors.pink,
              onPressed:_decrementCount,
            ),
            Text('${_count}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0)),
            FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.pink,
              onPressed:_incrementCount,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CounterListScreen(_count);
        }));
      },
          label: const Text('Stop'),
          backgroundColor: Colors.pink,
          icon: Icon(Icons.stop),
      ),
    );
  }
}