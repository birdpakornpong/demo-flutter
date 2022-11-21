import 'package:flutter/material.dart';
import './screen/login.dart';
import './screen/about-me.dart';
import './screen/menu-list.dart';
import './screen/img-list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Demo App",
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // route List
  int _routeIndex = 0;
  List<Widget> routeList = [
    LoginScreen(),
    AboutMe(),
    MenuList(),
    const ImgList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routeList.elementAt(_routeIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(label: 'Login', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'About Me', icon: Icon(Icons.graphic_eq)),
          BottomNavigationBarItem(label: 'Menu', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'Create', icon: Icon(Icons.call)),
        ],
        currentIndex: _routeIndex,
        onTap: (index) {
          setState(() {
            _routeIndex = index;
            print(index);
          });
        },
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
