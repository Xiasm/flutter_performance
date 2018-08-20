import 'package:flutter/material.dart';
import 'package:flutter_performance/BookUtils.dart';
//“=>”Dart中单行函数或方法的简写。
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BookUtils.generatBook();
    //MaterialApp 一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget
    return new MaterialApp(
      title: 'Welcome to Flutter',
      //Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }


}