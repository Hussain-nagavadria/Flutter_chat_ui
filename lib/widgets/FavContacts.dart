import 'package:chat_app/models/messageModel.dart';
import 'package:chat_app/screens/ChatScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favourite Contacts",
                  style: TextStyle(
                      color: Colors.blueGrey, fontSize: 18.0, letterSpacing: 0.8),
                ),
                IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.blueGrey,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          Container(
            height: 120.0,

            child: ListView.builder(
                itemCount: favorites.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ChatScreen(user: favorites[index]))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                favorites[index].imageUrl,
                              )),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(favorites[index].name,
                          style: TextStyle(fontSize: 18.0,color: Colors.blueGrey),),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
