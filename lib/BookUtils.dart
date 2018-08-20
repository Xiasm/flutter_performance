import 'dart:math' as math;

import 'package:flutter_performance/Book.dart';

class BookUtils{

  List<Book> generatBook() {
    var list = new List<Book>(100);
    var random = new math.Random();
    for (int i = 0; i < 100; i++) {
      int index = random.nextInt(9);
      int version = random.nextInt(20);
      var bookName = bookList[index] + "--第" + version.toString() + "版";
      var bookPrice = random.nextDouble();
      Book book = new Book(bookName, null, bookPrice.toString());
      list.add(book);
    }
    return list;
  }



  List<String> bookList = new List<String>.unmodifiable(["第一行代码", "第二行代码", "安卓开发艺术探索", "算法导论", "黑客与画家",
  "只是为了好玩", "PPT,要你好看", "Windows CE(C#)嵌入式应用开发", "Android驱动开发与移植实战详解", "深入理解安卓"]);


}