import 'package:flutter/material.dart';
import 'package:flutter_getx/core/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetxAppTest());
}

class GetxAppTest extends StatelessWidget {
  const GetxAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Test App',
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}
