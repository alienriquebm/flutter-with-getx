import 'package:get/get.dart';

class CounterExampleController extends GetxController {
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
}
