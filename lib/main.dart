import 'package:flutter/material.dart';
import './util/Constants.dart';
import './pages/News.dart';
import './pages/Labs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geiz',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Tab> homeTabs = Constants.tabs.map((Map tabItem) {
    return Tab(text: tabItem['tabTitle']);
  }).toList();
  final List<Widget> homeTabContents = [News(), Labs()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Constants.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottom: TabBar(
            tabs: homeTabs,
            labelStyle: TextStyle(fontSize: 18.0),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.yellow,
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.only(bottom: 1.0),
          ),
        ),
        body: TabBarView(children: homeTabContents,),
      ),
    );
  }
}
