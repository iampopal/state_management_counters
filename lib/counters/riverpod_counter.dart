import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_counters/widgets/widgets.dart';

class RiverpodApp extends StatelessWidget {
  const RiverpodApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: MaterialApp(home: Home()));
  }
}

final counterProvider = StateProvider<int>((ref) => 0);

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterProvider).state;

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Example')),
      body: CounterText(count),
      bottomNavigationBar: CounterButtons(
        onIncrement: () {
          context.read(counterProvider).state++;
        },
        onDecrement: () {
          context.read(counterProvider).state--;
        },
      ),
    );
  }
}
