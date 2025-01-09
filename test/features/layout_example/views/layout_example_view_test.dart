import 'package:flutter_getx/core/routes/app_routes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget createTestableApp() {
  return GetMaterialApp(
    initialRoute: AppRoutes.layoutExample,
    getPages: AppRoutes.routes,
  );
}

void main() {
  testWidgets('Se muestra el LayoutExampleView', (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());
    expect(find.text('Flutter GetX Test - Layout Example'), findsOneWidget);
  });
}
