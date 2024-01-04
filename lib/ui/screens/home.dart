import 'package:algolia_news_app/logic/logic.dart';
import 'package:algolia_news_app/service_locator.dart';
import 'package:algolia_news_app/ui/screens/jobs.dart';
import 'package:algolia_news_app/ui/screens/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Algolia News App"),
          bottom: const TabBar(tabs: [
            Tab(
              text: "Stories",
            ),
            Tab(
              text: "Jobs",
            ),
          ]),
        ),
        body: const TabBarView(children: [Stories(), Jobs()]),
        floatingActionButton:  FloatingActionButton(
          onPressed: () async {
            final JobsBLoC jobsBLoC = locator.get<JobsBLoC>();
            final JobsRequest jobsRequest = JobsRequest();
            final StoriesBLoC storiesBLoC = locator.get<StoriesBLoC>();
            final StoriesRequest storiesRequest = StoriesRequest();
            jobsBLoC.dispose();
            storiesBLoC.dispose();
            await jobsRequest.fetchJobs();
            await storiesRequest.fetchStories();
          },
          child: const Icon(Icons.undo),
        ),
      ),
    );
  }
}
