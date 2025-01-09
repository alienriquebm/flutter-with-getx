import 'package:flutter/material.dart';
import 'package:flutter_getx/core/routes/app_routes.dart';
import 'package:flutter_getx/features/counter_example/controllers/counter_example_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

Widget createTestableApp() {
  return GetMaterialApp(
    initialRoute: AppRoutes.counterExample,
    getPages: AppRoutes.routes,
  );
}

void main() {
  tearDown(() {
    Get.delete<CounterExampleController>(force: true);
  });

  testWidgets(
      'CounterExampleView widget tiene botones de incremento, decremento y muestra el contador',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.remove), findsOneWidget);

    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Al presionar el botón de incremento, el contador aumenta',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());

    expect(find.text('0'), findsOneWidget);

    final Finder incrementButton = find.byIcon(Icons.add);
    await tester.tap(incrementButton);

    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Al presionar el botón de decremento, el contador disminuye',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());

    final Finder incrementButton = find.byIcon(Icons.add);
    await tester.tap(incrementButton);
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    final Finder decrementButton = find.byIcon(Icons.remove);
    await tester.tap(decrementButton);
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Al presionar Go to Home debe volver al home', (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());

    final Finder goToHomeButton = find.byKey(const Key('goToHomeButton'));
    await tester.tap(goToHomeButton);
    await tester.pumpAndSettle();
    debugDumpApp();
    expect(find.text('Flutter GetX Test - Home'), findsOneWidget);
  });
}
