import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _counterProvider = StateProvider((ref) => 0);

class CounterStateProviderPage extends ConsumerWidget {
  const CounterStateProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('State Provider'),
      ),
      body: Center(child: Text('Count: $counter')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(_counterProvider).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
