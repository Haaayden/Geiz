import 'package:flutter/material.dart';
import '../widgets/NewsCardCommon.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.yellow,
      onRefresh: () {},
      child: ListView.separated(
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 5,
            color: Color.fromARGB(50, 183, 187, 197),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return NewsCardCommon();
        },
      ),
    );
  }

}
