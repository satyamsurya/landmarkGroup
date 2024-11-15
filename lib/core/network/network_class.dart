import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkService {
  final String baseUrl = "https://api.thenewsapi.com/v1/news/headlines?locale=us&language=en&api_token=Bearer PWcwWrNaqDjbC3nJLDDFodij6kEi8gpOLGaiawoI"; // Replace with actual base URL

  // Function to fetch news articles
  Future<List<dynamic>> fetchArticles() async {
    try {
      final response = await http.get(
        Uri.parse("$baseUrl"),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['articles']; // Assuming the API response has 'articles' key
      } else {
        throw Exception("Failed to load articles");
      }
    } catch (e) {
      throw Exception("Failed to load articles: $e");
    }
  }
}
