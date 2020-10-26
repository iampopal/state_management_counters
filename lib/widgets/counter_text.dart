import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  const CounterText(this.count, {Key key}) : super(key: key);
  final count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$count',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
