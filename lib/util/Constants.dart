import 'Api.dart';

class Constants {
  static const List<Map> tabs = [{
    'tabTitle': 'NEWS',
    'apiUrl': API.feedsNews,
  }, {
    'tabTitle': 'LABS',
    'apiUrl': API.feedsLabs,
  }];
}
