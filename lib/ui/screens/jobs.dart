import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/service_locator.dart';
import 'package:algolia_news_app/ui/components/news_card.dart';
import 'package:algolia_news_app/ui/components/search_input.dart';
import 'package:flutter/material.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    final JobsBLoC jobsBLoC = locator.get<JobsBLoC>();
    final JobsRequest jobsRequest = JobsRequest();
    final ScrollController scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await jobsRequest.fetchJobs();
      scrollController.addListener(() async {
        print("listening");
        bool fullExtent = scrollController.position.atEdge &&
            scrollController.offset > scrollController.initialScrollOffset;
        if (fullExtent) {
          print("full");
          await jobsRequest.fetchJobs();
        }
      });
    });

    return Column(
      children: [
        SearchInput(
          stream: jobsBLoC.query,
          onChanged: jobsBLoC.addQuery,
        ),
        Expanded(
          child: StreamBuilder(
              stream: jobsBLoC.jobs,
              builder: (ctx, snap) => ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    controller: scrollController,
                    itemCount: snap.data?.length ?? 0,
                    itemBuilder: (ctx1, index) => NewsCard(
                      news: snap.data?[index],
                    ),
                  )),
        )
      ],
    );
  }
}
