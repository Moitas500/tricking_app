import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tricking_app/main.dart';

void main() {
  testWidgets('App builds correctly', (WidgetTester tester) async {

    FlutterError.onError = (FlutterErrorDetails details) {
      bool isImageError =
          details.exception.toString().contains('NetworkImageLoadException');

      if (!isImageError) {
        FlutterError.presentError(details);
      }
    };

    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.byType(MyApp), findsOneWidget);
  });
}
