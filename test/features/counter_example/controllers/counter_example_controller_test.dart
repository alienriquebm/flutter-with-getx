import 'package:flutter_getx/features/counter_example/controllers/counter_example_controller.dart';
import 'package:test/test.dart';

void main() {
  group('Testing the controller', () {
    test('Increment the counter', () {
      final CounterExampleController cec = CounterExampleController();
      cec.increment();
      expect(cec.count.value, 1);
    });

    test('Decrement the counter', () {
      final CounterExampleController cec = CounterExampleController();
      cec.decrement();
      expect(cec.count.value, -1);
    });
  });
}
