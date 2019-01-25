import 'package:flutter/material.dart';
import '../model/banner.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget topBanner(BuildContext context, List<TopBanner> bannerList) {
  if (bannerList.length == 0) {
    return Container();
  }
  DotSwiperPaginationBuilder builder = DotSwiperPaginationBuilder(
    color: Colors.white,//未选中圆点颜色
    activeColor: Colors.yellow,//选中圆点颜色
    size:7,//未选中大小
    activeSize: 7,//选中圆点大小
    space: 5//圆点间距
  );
  return Container(
    height: 200,
    child: Swiper(
      itemCount: bannerList.length,
      loop: true,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(bannerList[index].image, fit: BoxFit.cover);
      },
      pagination: SwiperPagination(
        builder: builder,
      ),
    ),
  );
}
