import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/model/model.dart';
import 'package:algolia_news_app/network/calls.dart';
import 'package:algolia_news_app/network/constants.dart';
import 'package:algolia_news_app/network/network_status.dart';
import 'package:algolia_news_app/service_locator.dart';

class JobsRequest
{

    fetchJobs({String? query}) async
    {
      final JobsBLoC jobsBLoC = locator.get<JobsBLoC>();
      String? memoryQuery = jobsBLoC.getQuery;
      String url = NetworkConstants.search;
      if(query != null)
      {
        jobsBLoC.clearJobs;
        jobsBLoC.resetIndex;
      }
      query = query ?? memoryQuery ?? '';
      int currentPage = jobsBLoC.fetchIndex;
      url = "$url?tags=job&query=$query&page=$currentPage";
      ({dynamic data, int status_code}) result = await get(url: url);

      if(result.status_code == 200)
        {
          HitModel hits = HitModel.fromJson(result.data);
          jobsBLoC.addJobs(hits.hits);
        }
      else
        {
          NetworkStatus.error(message: result.data.toString());
        }
    }
}