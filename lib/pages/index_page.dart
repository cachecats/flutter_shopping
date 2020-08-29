import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'shopping_cart_page.dart';
import 'mine_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var currentIndex = 0;
  var currentPage;

  // 定义底部 item 列表
  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('我的'))
  ];

  // 定义页面列表
  final List tabPages = [
    HomePage(),
    CategoryPage(),
    ShoppingCartPage(),
    MinePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的商城')),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(244, 245, 245, 1),
        type: BottomNavigationBarType.fixed,
        items: bottomItems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabPages[index];
          });
        },
      ),
      body: currentPage,
    );
  }
}
