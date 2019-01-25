import 'package:flutter/material.dart';
import '../model/feed.dart';
import './Base.dart';

Widget labsCard (BuildContext context, Feed feed) {
  return Column(
    children: <Widget>[
      Container(
        height: 50,
        child: LabTitleWidget(feed.post.column.image, feed.post.column.name),
      ),
      Stack(
        alignment: const FractionalOffset(0.07, 0.83),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.network(feed.image, fit: BoxFit.cover,),
            height: 170,
          ),
          Container(
            child: Image.network(feed.post.category.imageLab, width: 30, height: 30,),
          )
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: titleLabel(context, feed.post.title),
        margin: EdgeInsets.fromLTRB(15, 10, 15, 8),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: descriptionLabel(context, feed.post.description),
        margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      ),
    ],
  );
}

class LabTitleWidget extends StatelessWidget {
  final String iconString;
  final String title;

  LabTitleWidget(this.iconString, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(12, 2, 10, 0 ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(iconString),
            radius: 10,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 2, 10, 0 ),
          child: titleLabel(context, title),
        ),
        Expanded(
          child: Container(
          padding: EdgeInsets.fromLTRB(10, 1, 10, 0),
            alignment: Alignment.centerRight,
            child: Image.asset('assets/images/toolbarShare.png', width: 18, height: 18,),
          ),
        ),
      ],
    );
  }
}
