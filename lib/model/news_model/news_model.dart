import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@Freezed()
class NewsModel with _$NewsModel
{
    factory NewsModel(String? author, String? title, String? url) = _NewsModel;

    factory NewsModel.fromJson(Map<String, dynamic> json) => _NewsModel.fromJson(json);
}

@Freezed()
class HitModel with _$HitModel
{
  factory HitModel(List<NewsModel?>? hits) = _HitModel;

  factory HitModel.fromJson(Map<String, dynamic> json) => _HitModel.fromJson(json);
}