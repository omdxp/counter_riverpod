import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterChangeNotifier extends ChangeNotifier {
  CounterChangeNotifier({this.count = 0});

  int count;

  void increment() {
    count++;
    notifyListeners();
  }
}

// class CounterStateNotifier extends StateNotifier {
//   CounterStateNotifier({int count}) : super(count ?? 0);

//   void increment() {
//     state++;
//   }
// }
