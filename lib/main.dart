import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'architecture/architecture_page.dart';
import 'publice/public_page.dart';
import 'navigation/navigation_page.dart';
import 'project/project_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 0;

  //初始化图标资源
  List<Icon> _tabSelectedImages = [
    new Icon(
      Icons.home,
      size: 25.0,
      color: Colors.blue,
    ),
    new Icon(
      Icons.view_comfy,
      size: 25.0,
      color: Colors.blue,
    ),
    new Icon(
      Icons.school,
      size: 25.0,
      color: Colors.blue,
    ),
    new Icon(
      Icons.navigation,
      size: 25.0,
      color: Colors.blue,
    ),
    new Icon(
      Icons.person,
      size: 25.0,
      color: Colors.blue,
    ),
  ];
  List<Icon> _tabImages = [
    new Icon(
      Icons.home,
      size: 25.0,
      color: Colors.grey,
    ),
    new Icon(
      Icons.view_comfy,
      size: 25.0,
      color: Colors.grey,
    ),
    new Icon(
      Icons.school,
      size: 25.0,
      color: Colors.grey,
    ),
    new Icon(
      Icons.navigation,
      size: 25.0,
      color: Colors.grey,
    ),
    new Icon(
      Icons.person,
      size: 25.0,
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new IndexedStack(
        children: <Widget>[
          HomePage(), //首页
          ArchitecturePage(), //体系
          PublicPage(), //公众号
          NavigationPage(), //导航
          ProjectPage(), //项目
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: new Text('首页')),
          BottomNavigationBarItem(icon: getTabIcon(1), title: new Text('体系')),
          BottomNavigationBarItem(icon: getTabIcon(2), title: new Text('公众号')),
          BottomNavigationBarItem(icon: getTabIcon(3), title: new Text('导航')),
          BottomNavigationBarItem(icon: getTabIcon(4), title: new Text('项目')),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Icon getTabIcon(int index) {
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }
}
