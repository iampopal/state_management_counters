import 'package:flutter/material.dart';
import 'package:state_management_counters/widgets/widgets.dart';

class StatefulCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Counter());
  }
}

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Counter')),
      body: CounterText(_counter),
      bottomNavigationBar: CounterButtons(
        onIncrement: () {
          setState(() {
            _counter++;
          });
        },
        onDecrement: () {
          setState(() {
            _counter--;
          });
        },
      ),
    );
  }
}
