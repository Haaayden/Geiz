import 'package:flutter/material.dart';
import '../model/feed.dart';
import '../widgets/ColumnHorizontal.dart';
import '../widgets/NewsCardCommon.dart';
import '../widgets/NewsCardLargeImg.dart';
import '../widgets/NewsCardTopLine.dart';
import '../widgets/LabsCard.dart';

class SelectCardType {
  static selectType(BuildContext context, dynamic data) {
    Widget widget;
    if (data.runtimeType == Feed) {
      if (data.indexType != null) {
        widget = newsCardTopLine(context, data);
      } else if (data.type == 0) {
        widget = labsCard(context, data);
      } else if (data.type == 1) {
        widget = newsCardCommon(context, data);
      } else if (data.type == 2) {
        widget = newsCardLargeImg(context, data);
      }
    } else {
      widget = ColumnHorizontal();
    }
    return widget;
  }
}
