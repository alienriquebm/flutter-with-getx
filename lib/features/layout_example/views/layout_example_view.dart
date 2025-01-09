import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutExampleView extends StatelessWidget {
  const LayoutExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter GetX Test - Layout Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: const Key('goToHomeButton'),
              onPressed: () {
                Get.offAllNamed('/home');
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
