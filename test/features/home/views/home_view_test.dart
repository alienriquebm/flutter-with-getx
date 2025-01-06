import 'package:flutter_getx/features/home/views/home_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('Home widget se muestra correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const GetMaterialApp(home: HomeView()));

    expect(find.text('Home Screen'), findsOneWidget);
  });
}
