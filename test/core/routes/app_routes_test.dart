import 'package:flutter_getx/core/routes/app_routes.dart';
import 'package:flutter_getx/features/home/views/home_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Debe navegar a HomeView', (WidgetTester tester) async {
    await tester.pumpWidget(
      GetMaterialApp(
        initialRoute: AppRoutes.initial,
        getPages: AppRoutes.routes,
      ),
    );

    // Verifica que HomeView está visible
    expect(find.byType(HomeView), findsOneWidget);
  });
}
