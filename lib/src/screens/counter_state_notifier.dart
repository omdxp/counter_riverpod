import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/src/utils/notifiers.dart';

final _counterProvider = StateNotifierProvider((ref) => CounterStateNotifier());

class CounterStateNotifierPage extends ConsumerWidget {
  const CounterStateNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('State Notifier'),
      ),
      body: Center(
        child: Text('Count: $counter'),
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
