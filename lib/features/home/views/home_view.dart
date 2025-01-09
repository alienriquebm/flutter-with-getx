import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> pages = [
      {'title': 'Counter example', 'route': '/counter-example'},
      {'title': 'Layout 1 example', 'route': '/layout-1-example'},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter GetX Test - Home'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(pages[index]['title']),
              onTap: () {
                Get.toNamed(pages[index]['route']);
              },
            );
          },
        ),
      ),
    );
  }
}
