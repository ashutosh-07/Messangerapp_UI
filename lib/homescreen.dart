// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, unused_import
import 'package:basicss/models/messeage_model.dart';
import 'package:basicss/widget/catsel.dart';
import 'package:basicss/widget/favourite.dart';
import 'package:basicss/widget/recentchat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        //   iconSize: 30,
        //   color: Colors.white70,
        // ),
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      //adding my own profile
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsetsDirectional.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Ashutosh Sharma"),
                accountEmail: Text("Lovely Professtional University"),
                currentAccountPicture: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("images/ashu.jpeg"),
                ) //Image.asset("images/ashu.jpeg"),
                )
            // DrawerHeader(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       CircleAvatar(
            //         radius: 35,
            //         backgroundImage: AssetImage("images/ashu.jpeg"),
            //       ),
            //       Text(
            //         "Ashu",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold, color: Colors.white),
            //       )
            //     ],
            //   ),
            //   decoration: BoxDecoration(color: Colors.redAccent),
            // ),
            ,
            ListTile(
              leading: Icon(Icons.call),
              title: Text("9105851831"),
              subtitle: Text("Contact number"),
              trailing: Icon(Icons.edit),
              tileColor: Colors.lime[50],
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("ashutosharma07@gmail.com"),
              subtitle: Text("Email Id"),
              trailing: Icon(Icons.edit),
              tileColor: Colors.lime[50],
            )
          ],
        ),
        //child: Text("hi i am drawer"),
      ),
      body: Column(
        children: [
          //app bar ke niche vo chat optins h CaSet widget me banaya h
          CatSel(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lime[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              child: Column(
                children: [
                  Fav(),
                  RecentChat(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
