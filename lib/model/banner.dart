import 'package:json_annotation/json_annotation.dart';
import 'post.dart';
part 'banner.g.dart';

@JsonSerializable()
class TopBanner {
  int type;
  String image;
  Post post;

  TopBanner({this.type,this.image,this.post});
  factory TopBanner.fromJson(Map<String,dynamic> json) => _$TopBannerFromJson(json);
  Map<String, dynamic> toJson() => _$TopBannerToJson(this);
}
