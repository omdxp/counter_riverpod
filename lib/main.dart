import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/src/screens/counter_change_notifier.dart';
import 'package:riverpod_counter/src/screens/counter_state_notifier.dart';
import 'package:riverpod_counter/src/screens/counter_state_provider.dart';
import 'package:riverpod_counter/src/screens/home.dart';

void main() => runApp(ProviderScope(child: RiverpodCounterApp()));

const changeNotiferRoute = 'changeNotifierRoute';
const stateNotifierRoute = 'stateNotifierRoute';
const stateProviderRoute = 'stateProviderRoute';

class RiverpodCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riverpod Counter',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        changeNotiferRoute: (context) => CounterChangeNotifierPage(),
        stateNotifierRoute: (context) => CounterStateNotifierPage(),
        stateProviderRoute: (context) => CounterStateProviderPage(),
      },
    );
  }
}
