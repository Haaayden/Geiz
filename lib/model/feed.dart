import 'package:json_annotation/json_annotation.dart';
import 'post.dart';
part 'feed.g.dart';

@JsonSerializable()
// Feeds 字段解析
class Feed {
  String image;
  int type;
  @JsonKey(name: 'index_type')
  int indexType;
  Post post;
  @JsonKey(name: 'news_list')
  List<News> newsList;

  Feed(this.image, this.type, this.indexType, this.post, this.newsList);

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}

@JsonSerializable()
class News {
  String description;

  News(this.description);

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
