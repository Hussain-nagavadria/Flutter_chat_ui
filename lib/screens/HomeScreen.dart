import 'package:chat_app/models/messageModel.dart';
import 'package:chat_app/widgets/CategorySelector.dart';
import 'package:chat_app/widgets/FavContacts.dart';
import 'package:chat_app/widgets/RecentChats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Center(
            child: Text(
              'Chats',
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  child: Column(
                    children: <Widget>[
                      FavContacts(),
                     RecentChats(),
                    ],
                  )),
            ),
          ],
        ));
  }
}
