import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(), body: Column(children: [_searchField()]));
  }

  Container _searchField() {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            )
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(CupertinoIcons.bubble_right),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none, // Remove the border side
            ),
            hintText: 'Ask me something!',
            // labelText: 'Curious?',
            // suffixIcon: const Icon(CupertinoIcons.barcode),
            suffixIcon: Container(
              width:
                  100, // we had to do this so the text appears and isn't overlapped by the icon
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      width: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(14),
                      child: Icon(CupertinoIcons.barcode),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
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
              child: const Icon(CupertinoIcons.mic),
            ),
          )
        ]);
  }
}
