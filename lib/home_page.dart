// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const profile = const Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/josh.jpeg'),
        ),
      ),
    );

    const welcome = Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text(
        'Welcome Joshua.',
        style: const TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    const welcome2 = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'I am just damn joking about what I put here , I f``king  look for what to use but i don\'t see. '
        'I just wanna create a Profile page and thats all.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: const <Widget>[profile, welcome, welcome2],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
