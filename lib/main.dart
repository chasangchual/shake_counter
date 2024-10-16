import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ShakeCounterApp());
}

class ShakeCounterApp extends StatelessWidget {
  const ShakeCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shake Counter'),
      ),
      body: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '0',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Shake it !!'),
          SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
