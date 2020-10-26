import 'package:flutter/material.dart';
import 'package:state_management_counters/counters/bloc_counter.dart';
import 'package:state_management_counters/counters/provider_counter.dart';
import 'package:state_management_counters/counters/riverpod_counter.dart';
import 'package:state_management_counters/counters/stateful_counter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'State management counters',
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 18),
              ExampleButton(
                name: 'StatefulWidget',
                widget: StatefulCounterApp(),
              ),
              ExampleButton(
                name: 'Provider and Notifier',
                widget: ProviderCounterApp(),
              ),
              ExampleButton(
                name: 'Bloc and Cubit',
                widget: BlocApp(),
              ),
              ExampleButton(
                name: 'Riverpod',
                widget: RiverpodApp(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExampleButton extends StatelessWidget {
  const ExampleButton({
    this.name,
    this.widget,
    Key key,
  }) : super(key: key);
  final String name;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77,
      padding: EdgeInsets.all(12),
      child: FlatButton(
        child: Text('$name', style: TextStyle(fontSize: 21)),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
        },
      ),
    );
  }
}
