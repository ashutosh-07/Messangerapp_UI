// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CatSel extends StatefulWidget {
  const CatSel({Key? key}) : super(key: key);

  @override
  State<CatSel> createState() => _CatSelState();
}

class _CatSelState extends State<CatSel> {
  int selindex = 0;
  final List<String> catogories = ['Messages', "Groups", "Request", "Calls"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catogories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selindex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  catogories[index],
                  style: TextStyle(
                      color: index == selindex ? Colors.white : Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
              ),
            );
          }),
    );
  }
}
