import 'package:test/test.dart';
import 'package:flutter_getx/controllers.dart';

void main() {
  group('Testing the controller', () {
    test('Increment the counter', () {
      final Controller c = Controller();
      c.increment();
      expect(c.count.value, 1);
    });

    test('Decrement the counter', () {
      final Controller c = Controller();
      c.decrement();
      expect(c.count.value, -1);
    });
  });
}
