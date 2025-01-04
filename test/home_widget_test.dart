import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/controllers.dart';
import 'package:flutter_getx/main.dart';

void main() {
  tearDown(() {
    Get.delete<Controller>(force: true);
  });

  testWidgets('Home widget tiene botones de incremento, decremento y muestra el contador',
      (WidgetTester tester) async {
    await tester.pumpWidget(const GetMaterialApp(home: Home()));

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.remove), findsOneWidget);

    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Al presionar el botón de incremento, el contador aumenta',
      (WidgetTester tester) async {
    await tester.pumpWidget(const GetMaterialApp(home: Home()));

    expect(find.text('0'), findsOneWidget);

    final Finder incrementButton = find.byIcon(Icons.add);
    await tester.tap(incrementButton);

    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Al presionar el botón de decremento, el contador disminuye',
      (WidgetTester tester) async {
    await tester.pumpWidget(const GetMaterialApp(home: Home()));

    final Finder incrementButton = find.byIcon(Icons.add);
    await tester.tap(incrementButton);
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    final Finder decrementButton = find.byIcon(Icons.remove);
    await tester.tap(decrementButton);
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}
