import 'package:flutter_getx/features/counter_example/views/counter_example_view.dart';
import 'package:flutter_getx/features/layout_example/views/layout_example_view.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/features/home/views/home_view.dart';

class AppRoutes {
  static const initial = '/home';
  static const counterExample = '/counter-example';
  static const layoutExample = '/layout-example';

  static final routes = [
    GetPage(
      name: initial,
      page: () => const HomeView(),
    ),
    GetPage(
      name: counterExample,
      page: () => const CounterExampleView(),
    ),
    GetPage(
      name: layoutExample,
      page: () => const LayoutExampleView(),
    ),
  ];
}
