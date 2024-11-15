part of 'fetch_list_bloc.dart';

@immutable
abstract class FetchListEvent {}

class FetchedNewsEvent extends FetchListEvent {
  final BuildContext context;
  FetchedNewsEvent({required this.context});
}
