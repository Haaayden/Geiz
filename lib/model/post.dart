import 'package:json_annotation/json_annotation.dart';
import 'column.dart';
part 'post.g.dart';

@JsonSerializable()
class Post {
  int id;
  int genre;
  Category category;
  @JsonKey(name: 'column')
  MyColumn column;
  String title;
  String description;
  @JsonKey(name: 'publish_time')
  int publishTime;
  String image;
  @JsonKey(name: 'start_time')
  int startTime;
  @JsonKey(name: 'comment_count')
  int commentCount;
  ///评论数
  @JsonKey(name: 'comment_status')
  bool commentStatus;
  ///收藏数
  @JsonKey(name: 'praise_count')
  int praiseCount;
  @JsonKey(name: 'super_tag')
  String superTag;
  @JsonKey(name: 'page_style')
  int pageStyle;
  @JsonKey(name: 'post_id')
  int postId;
  String appview;
  @JsonKey(name: 'file_length')
  String filmLength;
  String datatype;

  Post({this.id,
    this.genre,
    this.title,
    this.description,
    this.publishTime,
    this.image,
    this.startTime,
    this.commentCount,
    this.commentStatus,
    this.praiseCount,
    this.superTag,
    this.pageStyle,
    this.postId,
    this.appview,
    this.filmLength,
    this.datatype,
    this.category,
    this.column
  });
  factory Post.fromJson(Map<String,dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class Category {
  String title;
  int id;
  @JsonKey(name: 'image_lab')
  String imageLab;

  Category({this.title,this.id,this.imageLab});
  factory Category.fromJson(Map<String,dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
