import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    this.onIncrement,
    this.onDecrement,
    Key key,
  }) : super(key: key);
  final Function onIncrement, onDecrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFlatButton(
          context,
          text: 'Increment',
          icon: Icons.add,
          onTap: onIncrement,
        ),
        SizedBox(height: 18),
        _buildFlatButton(
          context,
          text: 'Decrement',
          icon: Icons.remove,
          onTap: onDecrement,
        ),
        SizedBox(height: 18),
      ],
    );
  }

  Widget _buildFlatButton(context, {String text, IconData icon, onTap}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 21),
      height: 66,
      child: FlatButton(
        onPressed: onTap,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text('$text', style: TextStyle(fontSize: 31)),
          ],
        ),
      ),
    );
  }
}
