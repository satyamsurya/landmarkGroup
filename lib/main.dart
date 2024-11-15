import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmark_project/presentation/screens/SplashScreen.dart';
import 'package:landmark_project/presentation/screens/listingScreen.dart';
import 'package:landmark_project/presentation/state/bloc/fetchListBloc/fetch_list_bloc.dart';

import 'core/network/network_class.dart';
 // Import your listing screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  late final NetworkService networkService; // Initialize NetworkService

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchListBloc>(create: (context) => FetchListBloc()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true, // To remove the debug banner
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/', // Define initial route as the SplashScreen
        routes: {
          '/': (context) => SplashScreen(), // Splash screen route
          '/listing': (context) => ListingScreen(), // Listing screen route
        },
      ),
    );
  }
}
