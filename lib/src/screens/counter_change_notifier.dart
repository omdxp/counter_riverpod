import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/src/utils/notifiers.dart';

final _counterProvider = ChangeNotifierProvider<CounterChangeNotifier>(
    (ref) => CounterChangeNotifier());

class CounterChangeNotifierPage extends ConsumerWidget {
  const CounterChangeNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Notifier'),
      ),
      body: Center(
        child: Text('Count: ${counter.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(_counterProvider).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
