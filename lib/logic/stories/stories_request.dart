import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/model/model.dart';
import 'package:algolia_news_app/network/calls.dart';
import 'package:algolia_news_app/network/constants.dart';
import 'package:algolia_news_app/network/network_status.dart';
import 'package:algolia_news_app/service_locator.dart';

class StoriesRequest
{
  fetchStories({String? query}) async
  {
    final StoriesBLoC storiesBLoC = locator.get<StoriesBLoC>();
    String? memoryQuery = storiesBLoC.getQuery;
    String url = NetworkConstants.search;
    if(query != null)
    {
      storiesBLoC.clearStories;
      storiesBLoC.resetIndex;
    }
    query = query ?? memoryQuery ?? '';
    int currentPage = storiesBLoC.fetchIndex;
    url = "$url?tags=story&query=$query&page=$currentPage";
    ({dynamic data, int status_code}) result = await get(url: url);

    if(result.status_code == 200)
    {
      HitModel hits = HitModel.fromJson(result.data);
      storiesBLoC.addStories(hits.hits);
    }
    else
    {
      NetworkStatus.error(message: result.data.toString());
    }
  }
}