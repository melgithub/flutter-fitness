import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(children: [
          // Padding(
          //   padding: EdgeInsets.all(12),
          // ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.bubble_right),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Have questions?',
                  // add a hint to the input field
                  hintText: 'Ask us anything'),
            ),
          )
        ]));
  }

  AppBar appBar() {
    return AppBar(
        title: const Text(
          'Fitness App',
          style: TextStyle(
              color: Color.fromARGB(255, 10, 44, 55),
              fontSize: 28,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Icon(CupertinoIcons.chart_bar),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(CupertinoIcons.speaker_1),
            ),
          )
        ]);
  }
}
