import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/network/network_class.dart';

part 'fetch_list_event.dart';
part 'fetch_list_state.dart';

class FetchListBloc extends Bloc<FetchListEvent, FetchListState> {

  FetchListBloc() : super(FetchListInitial()) {
    on<FetchedNewsEvent>((event, emit) async {
      await fetchNewsEvent(event, emit);
    });
  }

  Future<void> fetchNewsEvent(
      FetchedNewsEvent event, Emitter<FetchListState> emit) async {
    emit(FetchListLoading());

    try {
      // Fetch articles from the API using NetworkService
      var articles = await NetworkService().fetchArticles();

      if (articles.isNotEmpty) {
        emit(FetchListSuccess(articles)); // Successfully fetched articles
      } else {
        emit(FetchListFailure("No articles found.")); // No articles found
      }
    } catch (e) {
      emit(FetchListFailure("Failed to fetch articles: $e")); // Handle error
    }
  }
}
