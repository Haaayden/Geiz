// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyColumn _$MyColumnFromJson(Map<String, dynamic> json) {
  return MyColumn(
      name: json['name'] as String,
      id: json['id'] as int,
      icon: json['icon'] as String,
      location: json['location'] as int,
      showType: json['show_type'] as int,
      description: json['description'] as String,
      subscriberNum: json['subscriber_num'] as int)
    ..image = json['image'] as String
    ..contentProvider = json['content_provider'] as String;
}

Map<String, dynamic> _$MyColumnToJson(MyColumn instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'icon': instance.icon,
      'image': instance.image,
      'description': instance.description,
      'subscriber_num': instance.subscriberNum,
      'content_provider': instance.contentProvider,
      'location': instance.location,
      'show_type': instance.showType
    };
