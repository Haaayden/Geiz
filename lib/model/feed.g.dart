// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
      json['image'] as String,
      json['type'] as int,
      json['index_type'] as int,
      json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      (json['news_list'] as List)
          ?.map((e) =>
              e == null ? null : News.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'image': instance.image,
      'type': instance.type,
      'index_type': instance.indexType,
      'post': instance.post,
      'news_list': instance.newsList
    };

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(json['description'] as String);
}

Map<String, dynamic> _$NewsToJson(News instance) =>
    <String, dynamic>{'description': instance.description};
