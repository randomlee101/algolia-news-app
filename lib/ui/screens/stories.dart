import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/service_locator.dart';
import 'package:algolia_news_app/ui/components/news_card.dart';
import 'package:algolia_news_app/ui/components/search_input.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final StoriesBLoC storiesBLoC = locator.get<StoriesBLoC>();
    final StoriesRequest storiesRequest = StoriesRequest();
    final ScrollController scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await storiesRequest.fetchStories();
      scrollController.addListener(() async {
        bool fullExtent = scrollController.position.atEdge &&
            scrollController.offset > scrollController.initialScrollOffset;
        if (fullExtent) {
          await storiesRequest.fetchStories();
        }
      });
    });

    return Column(
      children: [
        SearchInput(
          stream: storiesBLoC.query,
          onChanged: storiesBLoC.addQuery,
        ),
        Expanded(
          child: StreamBuilder(
              stream: storiesBLoC.stories,
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
