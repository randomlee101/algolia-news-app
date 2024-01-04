// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      json['author'] as String?,
      json['title'] as String?,
      json['url'] as String?,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'url': instance.url,
    };

_$HitModelImpl _$$HitModelImplFromJson(Map<String, dynamic> json) =>
    _$HitModelImpl(
      (json['hits'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HitModelImplToJson(_$HitModelImpl instance) =>
    <String, dynamic>{
      'hits': instance.hits,
    };
