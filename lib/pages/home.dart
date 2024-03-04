import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(CupertinoIcons.search),
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
          title: const Text('Fitness App',
            style: TextStyle(
              color: Color.fromARGB(255, 10, 44, 55),
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.white,
          leading: SizedBox(
            width: 30,
            height: 30,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
                  child: const Icon(CupertinoIcons.person),
            ),
         )
    );
  }
}