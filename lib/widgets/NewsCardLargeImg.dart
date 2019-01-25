import 'package:flutter/material.dart';
import '../model/feed.dart';
import '../widgets/Base.dart';

// Widget newsCardLargeImg(BuildContext context, Feed feed) {
//   return Container(
//     height: 100.0,
//     color: Colors.grey,
//     child: Center(
//       child: Text('NewsCardLargeImg'),
//     ),
//   );
// }

class NewsCardLargeImg extends StatelessWidget {
  final Feed feed;

  NewsCardLargeImg(this.feed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 170,
          child: Image.network(feed.image, fit: BoxFit.fitWidth),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: titleLabel(context, feed.post.title),
          margin: EdgeInsets.fromLTRB(15, 15, 15, 8),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: descriptionLabel(context, feed.post.description),
          margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
        ),
        Container(
          child: listBottomWidget(context, feed.post),
          margin: EdgeInsets.fromLTRB(15, 0, 0, 13),
        ),
      ],
    );
  }
}
