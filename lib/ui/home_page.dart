import 'package:flutter/material.dart';
import './login_UI.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<StatefulWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Text("Home",
        style: TextStyle(
            fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold)),
    Text("Notify",
        style: TextStyle(
            fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold)),
    Text("Map",
        style: TextStyle(
            fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold)),
    Text("Profile",
        style: TextStyle(
            fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold)),
    Text("Setup",
        style: TextStyle(
            fontSize: 50, color: Colors.grey, fontWeight: FontWeight.bold)),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true ,
            title: Text("Home",),
          ),
          body: Center(
            child: _children[_currentIndex],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.blue,
                primaryColor: Colors.white,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: TextStyle(color: Colors.blueGrey[100]))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    title: Container(
                      height: 0,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    title: Container(
                      height: 0,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    title: Container(
                      height: 0,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Container(
                      height: 0,
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Container(
                      height: 0,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
