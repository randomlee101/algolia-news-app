import 'package:algolia_news_app/logic/jobs/jobs_logic.dart';
import 'package:algolia_news_app/model/model.dart';
import 'package:rxdart/rxdart.dart';

class JobsBLoC
{
  int currentIndex = 0;

  final BehaviorSubject<List<NewsModel?>?> _jobs = BehaviorSubject<List<NewsModel?>?>();
  final BehaviorSubject<String?> _query = BehaviorSubject<String?>();
  final JobsRequest jobsRequest = JobsRequest();

  Stream<List<NewsModel?>?> get jobs => _jobs.stream.debounceTime(const Duration(seconds: 1));
  Stream<String?> get query => _query.stream.debounceTime(const Duration(seconds: 5)).map(processQuery);

  addJobs(List<NewsModel?>? hits) => _jobs.sink.add({...?_jobs.valueOrNull?.toSet(), ...?hits?.toSet()}.toList());
  addQuery(String? e) => _query.sink.add(e);
  String? processQuery(String? e) {
    if(e != null && e.isNotEmpty) jobsRequest.fetchJobs(query: e);
    return e;
  }
  int get fetchIndex => currentIndex++;
  String? get getQuery => _query.valueOrNull;
  get resetIndex => currentIndex = 0;
  get clearJobs => _jobs.sink.add([]);

  dispose()
  {
    clearJobs;
    addQuery(null);
    _jobs.drain(null);
    _query.drain(null);
    resetIndex;
  }
}