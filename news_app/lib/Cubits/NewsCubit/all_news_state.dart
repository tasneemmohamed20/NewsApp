part of 'all_news_cubit.dart';

@immutable
abstract class AllNewsState {}

class AllNewsInitial extends AllNewsState {}
class AllNewsLoading extends AllNewsState {}
class AllNewsSuccess extends AllNewsState {
  final NewsModel myResponse;
  AllNewsSuccess({ required this.myResponse});
}
class AllNewsFailure extends AllNewsState {}
