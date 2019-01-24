import 'package:json_annotation/json_annotation.dart';
part 'column.g.dart';

@JsonSerializable()
class MyColumn {
  String name;
  int id;
  String icon;
  String image;
  String description;
  @JsonKey(name: 'subscriber_num')
  int subscriberNum;
  @JsonKey(name: 'content_provider')
  String contentProvider;
  int location;
  @JsonKey(name: 'show_type')
  int showType;

  MyColumn({this.name,this.id,this.icon,this.location,this.showType,this.description,this.subscriberNum});
  factory MyColumn.fromJson(Map<String,dynamic> json) => _$MyColumnFromJson(json);
  Map<String, dynamic> toJson() => _$MyColumnToJson(this);
}
