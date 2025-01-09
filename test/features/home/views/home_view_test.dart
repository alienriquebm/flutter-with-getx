import 'package:flutter_getx/core/routes/app_routes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget createTestableApp() {
  return GetMaterialApp(
    initialRoute: AppRoutes.initial,
    getPages: AppRoutes.routes,
  );
}

void main() {
  testWidgets('HomeView widget muestra la lista de las dos páginas existentes',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());
    expect(find.text('Counter example'), findsOneWidget);
    expect(find.text('Layout 1 example'), findsOneWidget);
  });

  testWidgets('Al hacer tap en un item de la lista, se navega a la página correspondiente',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestableApp());
    await tester.tap(find.text('Counter example'));
    await tester.pumpAndSettle();
    expect(find.text('0'), findsOneWidget);
  });
}
