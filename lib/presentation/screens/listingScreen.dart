import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/bloc/fetchListBloc/fetch_list_bloc.dart';
import 'ExpandScreen.dart';

class ListingScreen extends StatefulWidget {
  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  // List of image URLs (this can be fetched from an API or local data)
  final List<String> listOfImages = [
    "https://picsum.photos/200/300",
    "https://picsum.photos/200/301",
    "https://picsum.photos/200/302",
    "https://picsum.photos/200/303",
    "https://picsum.photos/200/304",
    "https://picsum.photos/200/305",
    "https://picsum.photos/200/306",
    "https://picsum.photos/200/307",
    "https://picsum.photos/200/308",
    "https://picsum.photos/200/309",
  ];

  @override
  void initState() {
    super.initState();
    context.read<FetchListBloc>().add(FetchedNewsEvent(context: context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News Listing")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemCount: listOfImages.length, // Use the length of the list of images
        itemBuilder: (context, index) {
          // Get the image URL from the list
          String imageUrl = listOfImages[index];

          return Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                // Navigate to ExpandedScreen with the selected image's URL
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpandedScreen(imageUrl: imageUrl),
                  ),
                );
              },
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imageUrl,
                placeholder: (context, url) => const SizedBox(
                  child: CircularProgressIndicator(
                    color: Colors.grey,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
      ),
    );
  }
}
