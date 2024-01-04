import 'package:algolia_news_app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, this.news});

  final NewsModel? news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () async => launchUrl(Uri.parse(news?.url ?? "google.com")),
        title: Text(news?.title ?? "New Title"),
        subtitle: Text(news?.author ?? "News Author"),
      ),
    );
  }
}
