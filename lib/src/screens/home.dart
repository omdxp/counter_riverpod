import 'package:flutter/material.dart';
import 'package:riverpod_counter/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, changeNotiferRoute);
                  },
                  child: Text('Change Notifier')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, stateNotifierRoute);
                  },
                  child: Text('State Notifier')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, stateProviderRoute);
                  },
                  child: Text('State Provider')),
            ],
          ),
        ),
      ),
    );
  }
}
