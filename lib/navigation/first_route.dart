import 'package:flutter/material.dart';
import 'package:msedcl/navigation/second_route.dart';


void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) =>  const FirstRoute(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) =>  const SecondRoute(),
    },

  ),


  );
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Route')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}