import 'package:flutter/material.dart';
import '../model/feed.dart';
import './Base.dart';
import '../model/post.dart';

Widget newsCardTopLine(BuildContext context, Feed feed) {
  return Column(
    children: <Widget>[
      titleWidget(context, feed),
      newsTopLineFirstItemWidget(context, feed.newsList[0].description, feed.image),
      Container(height: 10,),
      newsTopLineItemWidget(context, feed.newsList[1].description),
      Container(
        height: 0.8,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
        color: Color.fromARGB(50,183, 187, 197),
      ),
      newsTopLineItemWidget(context, feed.newsList[2].description),
      newsListBottomWidget(context, feed.post),
    ],
  );
}

Widget titleWidget(BuildContext context, Feed feed) {
  return Row(
    children: <Widget>[
      Container(
        width: 30,
        height: 30,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(feed.post.column.icon),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: titleLabel(context, feed.post.column.name),
      )
    ],
  );
}

Widget newsTopLineFirstItemWidget(BuildContext context, String title, String imageStr) {
  return Row(
    children: <Widget>[
      Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Image.asset('assets/images/yellowDot.png', fit: BoxFit.fitWidth, width: 30, height: 30,),
      ),
      Container(
        width: 200,
        height: 40,
        child: descriptionLabel(context, title, fontSize: 13),
      ),
      Expanded(
        child: Container(
          height: 60,
          child: Image.network(imageStr, fit: BoxFit.fitHeight),
        ),
      ),
    ],
  );
}

Widget newsTopLineItemWidget(BuildContext context, String title) {
  return Row(
    children: <Widget>[
      Container(
        width: 40,
        height: 30,
        child: Image.asset('assets/images/yellowDot.png',fit: BoxFit.fitWidth,),
        padding: EdgeInsets.only(bottom: 12),
      ),
      Expanded(
        child: Container  (
          padding: EdgeInsets.only(right: 20),
          height: 30,
          child: descriptionLabel(context, title,fontSize: 13),
          margin: EdgeInsets.only(right: 10),
        ),
      )

    ],
  );
}

Widget newsListBottomWidget(BuildContext context, Post post){
  return Row(
    children: <Widget>[
      Container(
        child: listBottomWidget(context,post),
        padding: EdgeInsets.fromLTRB(15, 0, 0, 5),
      ),
      Expanded(
        child: Container(
          alignment: Alignment.centerRight,
          child: descriptionLabel(context, '查看详情>>'),
          padding: EdgeInsets.fromLTRB(0, 0, 15, 5),
        ),
      )
    ],
  );
}
