import 'package:flutter/material.dart';
import '../model/feed.dart';
import '../widgets/Base.dart';

Widget newsCardCommon (BuildContext context, Feed feed) {
  return Row(
    children: <Widget>[
      Container(
        width: 200,
        height: 120,
        margin: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Container(
              child: titleLabel(context, feed.post.title),
              height: 90,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                alignment: Alignment.bottomLeft,
                child: listBottomWidget(context, feed.post),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 0),
          height: 120,
          child: Image.network(feed.image, fit: BoxFit.fitHeight),
        ),
      )
    ],
  );
}
