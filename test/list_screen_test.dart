import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:landmark_project/presentation/screens/ListingScreen.dart';
import 'package:landmark_project/presentation/screens/ExpandScreen.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  testWidgets('ListingScreen displays images and navigates to ExpandedScreen on tap', (WidgetTester tester) async {
    // Build the ListingScreen widget
    await tester.pumpWidget(
      MaterialApp(
        home: ListingScreen(),
      ),
    );

    // Verify that the "News Listing" title is displayed
    expect(find.text('News Listing'), findsOneWidget);

    // Verify that the grid view is displayed
    expect(find.byType(GridView), findsOneWidget);

    // Verify that there are 10 images (as in the list of image URLs)
    expect(find.byType(CachedNetworkImage), findsNWidgets(10));

    // Tap on the first image to simulate navigation to ExpandedScreen
    await tester.tap(find.byType(CachedNetworkImage).first);
    await tester.pumpAndSettle(); // Wait for navigation to complete

    // Verify that the ExpandedScreen is displayed
    expect(find.byType(ExpandedScreen), findsOneWidget);

    // Verify that the image URL passed to the ExpandedScreen is correct
    expect(find.text('https://picsum.photos/200/300'), findsOneWidget);
  });
}
