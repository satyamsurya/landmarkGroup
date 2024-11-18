import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:landmark_project/presentation/screens/SplashScreen.dart';
import 'package:landmark_project/presentation/screens/listingScreen.dart';
import 'package:flutter/widgets.dart';

void main() {
  testWidgets('SplashScreen navigates to ListingScreen after 1 second', (WidgetTester tester) async {
    // Create a Mock Navigator Observer to track navigation events
    final navigatorObserver = NavigatorObserver();

    // Build the SplashScreen widget
    await tester.pumpWidget(
      MaterialApp(
        home: SplashScreen(),
        navigatorObservers: [navigatorObserver], // Adding the observer
      ),
    );

    // Verify that the "Splash Screen" text is displayed
    expect(find.text('Splash Screen'), findsOneWidget);

    // Simulate waiting for 1 second for the Future.delayed to trigger
    await tester.pumpAndSettle(const Duration(seconds: 2)); // Wait for the delay and any animations

    // Verify that ListingScreen is pushed after the delay
    expect(find.byType(ListingScreen), findsOneWidget);

    // Check that a push was made to the navigator (navigate to ListingScreen)
   // verify(() => navigatorObserver.didPush(anyOf(), anyOf())).called(1);
  });
}
