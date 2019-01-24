import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/result.dart';
import '../model/banner.dart';
import '../model/column.dart';
import '../widgets/TopBanner.dart' as TopBannerWidget;
import '../util/SelectCardType.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State {
  String url;
  dynamic lastKey = '0';
  List<dynamic> dataList = [];
  List<TopBanner> banners = [];

  @override
  void initState() {
    url = 'http://app3.qdaily.com/app3/homes/index_v2/';
    

    // Future.delayed(Duration(milliseconds: 100)).then((_) {
      getFirstPageData();
    // });
  }

  Future getFirstPageData() async {
    try {
      Response res = await Dio().get('$url$lastKey.json');
      Result result = Result.fromJson(res.data);
      lastKey = result.response.lastKey;

      setState(() {
        if (result.response.banners != null) {
          banners = result.response.banners;
        }
        List<dynamic> data = [];
        data.addAll(result.response.feeds);
        if (result.response.columns != null) {
          result.response.columns.forEach((MyColumn column) {
            data.insert(column.location, {
              'id': column.id,
              'showType': column.showType,
            });
          });
        }
        dataList.addAll(data);
      });
    } catch (e) {
      print('=== getFirstPageData error === $e');
    }
  }

  int _getListCount() {
    return (dataList.length > 0) ? dataList.length + 2 : dataList.length + 1;
  }




  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.yellow,
      onRefresh: () {},
      child: ListView.separated(
        itemCount: _getListCount(),
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 5,
            color: Color.fromARGB(50, 183, 187, 197),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            // 第一个展示Banner
            return TopBannerWidget.TopBanner();
          } else if (index < dataList.length + 1) {
            // 展示Card
            return SelectCardType.selectType(context, dataList[index - 1]);
          } else {
            // TODO: 展示加载框
          }
        },
      ),
    );
  }

}
