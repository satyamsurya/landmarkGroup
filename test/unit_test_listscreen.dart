import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:landmark_project/presentation/screens/SplashScreen.dart';
import 'package:landmark_project/presentation/screens/listingScreen.dart';

void main() {
  testWidgets('SplashScreen navigates to ListingScreen after 1 second', (WidgetTester tester) async {
    // Build the SplashScreen widget
    await tester.pumpWidget(
      MaterialApp(
        home: SplashScreen(),
      ),
    );

    // Verify that the Splash Screen text is displayed initially
    expect(find.text('Splash Screen'), findsOneWidget);

    // Simulate the passage of time (1 second)
    await tester.pumpAndSettle(const Duration(seconds: 1));

    // Verify that ListingScreen is pushed after the delay
    expect(find.byType(ListingScreen), findsOneWidget);

    // Verify that the transition effect (FadeTransition) is present in the widget tree
    expect(find.byType(FadeTransition), findsOneWidget);
  });
}
