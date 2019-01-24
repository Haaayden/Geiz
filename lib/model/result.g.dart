// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      json['response'] == null
          ? null
          : MyResponse.fromJson(json['response'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ResultToJson(Result instance) =>
    <String, dynamic>{'meta': instance.meta, 'response': instance.response};

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(json['status'] as int, json['msg'] as String);
}

Map<String, dynamic> _$MetaToJson(Meta instance) =>
    <String, dynamic>{'status': instance.status, 'msg': instance.msg};

MyResponse _$MyResponseFromJson(Map<String, dynamic> json) {
  return MyResponse(
      json['has_more'] as bool,
      json['last_key'],
      (json['feeds'] as List)
          ?.map((e) =>
              e == null ? null : Feed.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['columns'] as List)
          ?.map((e) =>
              e == null ? null : MyColumn.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['banners'] as List)
          ?.map((e) =>
              e == null ? null : TopBanner.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$MyResponseToJson(MyResponse instance) =>
    <String, dynamic>{
      'has_more': instance.hasMore,
      'last_key': instance.lastKey,
      'feeds': instance.feeds,
      'columns': instance.columns,
      'banners': instance.banners
    };
