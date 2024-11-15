part of 'fetch_list_bloc.dart';

@immutable
abstract class FetchListState {}

class FetchListInitial extends FetchListState {}

class FetchListLoading extends FetchListState {}

class FetchListSuccess extends FetchListState {
  final List<dynamic> articles;
  FetchListSuccess(this.articles);
}

class FetchListFailure extends FetchListState {
  final String errorMessage;
  FetchListFailure(this.errorMessage);
}
