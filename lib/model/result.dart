import 'package:json_annotation/json_annotation.dart';
import 'banner.dart';
import 'column.dart';
import 'feed.dart';
part 'result.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class Result{
  Result(this.meta,this.response);
  @JsonKey(name: 'meta')
  Meta meta;
  @JsonKey(name: 'response')
  MyResponse response;
  //不同的类使用不同的mixin即可
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Meta{
  int status;
  String msg;

  Meta(this.status,this.msg);
  factory Meta.fromJson(Map<String,dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class MyResponse {
  @JsonKey(name: 'has_more')
  bool hasMore;
  @JsonKey(name: 'last_key')
  var lastKey;
  List<Feed> feeds;
  List<MyColumn> columns;
  List<TopBanner> banners;

  MyResponse(this.hasMore, this.lastKey, this.feeds, this.columns, this.banners);
  factory MyResponse.fromJson(Map<String,dynamic> json) => _$MyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MyResponseToJson(this);
}
