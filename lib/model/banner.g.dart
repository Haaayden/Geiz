// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopBanner _$TopBannerFromJson(Map<String, dynamic> json) {
  return TopBanner(
      type: json['type'] as int,
      image: json['image'] as String,
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TopBannerToJson(TopBanner instance) => <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'post': instance.post
    };
