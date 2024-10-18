import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shake_counter/shake_counter_controller.dart';

import 'main_binding.dart';

void main() async {
  runApp(const ShakeCounterApp());
}

class ShakeCounterApp extends StatelessWidget {
  const ShakeCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      home: const MainView(),
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
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text(
              ShakeCounterController.to.count.toString(),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          const Text('Shake it !!'),
          const SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
