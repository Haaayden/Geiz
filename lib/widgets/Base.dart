import 'package:flutter/material.dart';
import '../model/post.dart';
import '../util/Util.dart';

Widget titleLabel(BuildContext context, String text, { double fontSize = 15, int maxLines = 3 }) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
  );
}

Widget listBottomWidget(BuildContext context, Post post) {
  return Row(
    children: <Widget>[
      descriptionLabel(context, post.category.title),
      Padding(padding: EdgeInsets.all(4),),
      iconText(context, post.commentCount, 'assets/images/feedComment.png'),
      Padding(padding: EdgeInsets.all(2),),
      iconText(context, post.praiseCount, 'assets/images/feedPraise.png'),
      Padding(padding: EdgeInsets.all(4),),
      descriptionLabel(context, Util.getPublishTimeStr(post.publishTime)),
    ],
  );
}

Widget descriptionLabel(BuildContext context, String text, { double fontSize = 12, int maxLines = 1 }) {
  return Text(text,
    style: TextStyle(
      fontSize: fontSize,
      color: Color.fromARGB(200, 100, 100, 100),
    ),
    maxLines: maxLines,
    textAlign: TextAlign.left,
  );
}

Widget iconText(BuildContext context, int count, String imageStr) {
  return Row(
    children: <Widget>[
      Padding(padding: EdgeInsets.all(2),),
      Image.asset(imageStr, fit: BoxFit.fitWidth, width: 12, height: 12,),
      Padding(padding: EdgeInsets.all(1),),
      descriptionLabel(context, '$count')
    ],
  );
}
