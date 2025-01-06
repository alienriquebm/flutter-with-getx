import 'package:flutter_getx/features/counter_example/views/counter_example_view.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/features/home/views/home_view.dart';

class AppRoutes {
  static const initial = '/home';

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomeView(),
    ),
    GetPage(
      name: '/counter-example',
      page: () => const CounterExampleView(),
    ),
  ];
}
