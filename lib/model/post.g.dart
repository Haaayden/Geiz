// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      id: json['id'] as int,
      genre: json['genre'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      publishTime: json['publish_time'] as int,
      image: json['image'] as String,
      startTime: json['start_time'] as int,
      commentCount: json['comment_count'] as int,
      commentStatus: json['comment_status'] as bool,
      praiseCount: json['praise_count'] as int,
      superTag: json['super_tag'] as String,
      pageStyle: json['page_style'] as int,
      postId: json['post_id'] as int,
      appview: json['appview'] as String,
      filmLength: json['file_length'] as String,
      datatype: json['datatype'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      column: json['column'] == null
          ? null
          : MyColumn.fromJson(json['column'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'genre': instance.genre,
      'category': instance.category,
      'column': instance.column,
      'title': instance.title,
      'description': instance.description,
      'publish_time': instance.publishTime,
      'image': instance.image,
      'start_time': instance.startTime,
      'comment_count': instance.commentCount,
      'comment_status': instance.commentStatus,
      'praise_count': instance.praiseCount,
      'super_tag': instance.superTag,
      'page_style': instance.pageStyle,
      'post_id': instance.postId,
      'appview': instance.appview,
      'file_length': instance.filmLength,
      'datatype': instance.datatype
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
      title: json['title'] as String,
      id: json['id'] as int,
      imageLab: json['image_lab'] as String);
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'image_lab': instance.imageLab
    };
