import 'package:flutter_test/flutter_test.dart';
import 'package:tricking_app/main.dart';

void main() {
  testWidgets('App builds correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MyApp), findsOneWidget);
  });
}
