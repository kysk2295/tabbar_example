import 'package:flutter/material.dart';
import 'sub/firstPage.dart';
import 'sub/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController controller;


  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller=TabController(length: 2, vsync: this);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
      ),
      body: TabBarView(
        children: [
          FirstApp(),SecondApp()
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs: [
        Tab(icon: Icon(Icons.looks_one,color: Colors.blue,),),
        Tab(icon: Icon(Icons.looks_two,color: Colors.blue,),),

      ],controller: controller,
      ),
    );

  }
}

