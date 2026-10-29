import 'package:flutter/material.dart';
import 'package:msedcl/main.dart';
import 'package:msedcl/navigation/args/home_screen.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              MyHomePage(title: 'home'),
             HomeScreen(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}