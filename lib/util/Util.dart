class Util {
  static const double MILLIS_LIMIT = 1000.0;

  static const double SECONDS_LIMIT = 60 * MILLIS_LIMIT;

  static const double MINUTES_LIMIT = 60 * SECONDS_LIMIT;

  static const double HOURS_LIMIT = 24 * MINUTES_LIMIT;

  static const double DAYS_LIMIT = 24 * HOURS_LIMIT;

  static const double MONTH_LIMIT = 30 * DAYS_LIMIT;


  static double sStaticBarHeight = 0.0;
  static String getDateStr(DateTime date) {
    if (date == null || date.toString() == null) {
      return "";
    } else if (date.toString().length < 10) {
      return date.toString();
    }
    return date.toString().substring(0, 10);
  }
  ///日期格式转换
  static String getPublishTimeStr(int date) {
    int subTime = DateTime.now().millisecondsSinceEpoch - date * 1000;

    if (subTime < MILLIS_LIMIT) {
      return "刚刚";
    } else if (subTime < SECONDS_LIMIT) {
      return (subTime / MILLIS_LIMIT).round().toString() + "秒前";
    } else if (subTime < MINUTES_LIMIT) {
      return (subTime / SECONDS_LIMIT).round().toString() + "分钟前";
    } else if (subTime < HOURS_LIMIT) {
      return (subTime / MINUTES_LIMIT).round().toString() + "小时前";
    } else if (subTime < DAYS_LIMIT) {
      return (subTime / HOURS_LIMIT).round().toString() + "天前";
    } else if (subTime < MONTH_LIMIT){
      return (subTime / DAYS_LIMIT).round().toString() + "月前";
    }else{
      return (subTime / MONTH_LIMIT).round().toString() + "年前";
    }
  }
}
