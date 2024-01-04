import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/model/model.dart';
import 'package:rxdart/rxdart.dart';

class StoriesBLoC {
  int currentIndex = 0;

  final BehaviorSubject<List<NewsModel?>?> _stories =
      BehaviorSubject<List<NewsModel?>?>();
  final BehaviorSubject<String?> _query = BehaviorSubject<String?>();
  final StoriesRequest storiesRequest = StoriesRequest();

  Stream<List<NewsModel?>?> get stories =>
      _stories.stream.debounceTime(const Duration(seconds: 1));

  Stream<String?> get query =>
      _query.stream.debounceTime(const Duration(seconds: 5)).map(processQuery);

  addStories(List<NewsModel?>? hits) => _stories.sink
      .add({...?_stories.valueOrNull?.toSet(), ...?hits?.toSet()}.toList());

  addQuery(String? e) => _query.sink.add(e);

  String? processQuery(String? e) {
    if (e != null && e.isNotEmpty) storiesRequest.fetchStories(query: e);
    return e;
  }

  int get fetchIndex => currentIndex++;

  String? get getQuery => _query.valueOrNull;

  get resetIndex => currentIndex = 0;

  get clearStories => _stories.sink.add(null);

  dispose() {
    clearStories;
    addQuery(null);
    _stories.drain(null);
    _query.drain(null);
    resetIndex;
  }
}
