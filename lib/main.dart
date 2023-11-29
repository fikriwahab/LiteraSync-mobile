import 'package:flutter/material.dart';
import 'package:literasync/screens/my_home_page.dart';
import 'package:literasync/screens/add_item_page.dart';
import 'package:literasync/screens/item_list_page.dart';
import 'package:literasync/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      routes: {
        '/addItem': (context) => AddItemPage(),
        '/itemList': (context) => ItemListPage(), 
        '/login': (context) => LoginPage(),
      },
    );
  }
}
