import 'package:flutter/material.dart';
//“=>”Dart中单行函数或方法的简写。
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //MaterialApp 一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget
    return new MaterialApp(
      title: 'Welcome to Flutter',
      //Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter 性能测试'),
        ),
        body: new ListPage(),
      ),
    );
  }

}

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ListState(new List<String>.generate(10000, (i) => "安卓开发艺术探索  第$i版"));

}

class ListState extends State<ListPage> {
  final List<String> items;
  String url = "https://avatar.csdn.net/0/2/C/1_singwhatiwanna.jpg?1534821491";

  ListState(this.items);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemCount: 10000,itemBuilder: buildItem);
  }

  Widget buildItem(BuildContext context, int index) {
    if(index.isOdd) return new Divider();
    TextStyle textStyle = new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);
//    return new ListTile(title: new Text('${items[index]}', style: textStyle), trailing: new Image(image: new NetworkImage(url), fit: BoxFit.cover));
    return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Text('${items[index]}', style: textStyle));
  }

}