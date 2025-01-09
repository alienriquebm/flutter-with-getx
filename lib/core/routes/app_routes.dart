import 'package:flutter_getx/features/counter_example/views/counter_example_view.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/features/home/views/home_view.dart';

class AppRoutes {
  static const initial = '/home';
  static const counterExample = '/counter-example';

  static final routes = [
    GetPage(
      name: initial,
      page: () => const HomeView(),
    ),
    GetPage(
      name: counterExample,
      page: () => const CounterExampleView(),
    ),
  ];
}
