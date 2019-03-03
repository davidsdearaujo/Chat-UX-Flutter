import 'package:flutter/material.dart';

import 'chat-screen.dart';

class MessagesScreen extends StatefulWidget {
  @override
  MessagesScreenState createState() {
    return new MessagesScreenState();
  }
}

class MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: _buildBottomBar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text("Messages"),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
          _buildTile(
            title: "Anna Marchelonda",
            subtitle: "Last message show",
            time: "10:55",
          ),
        ],
      ),
    );
  }

  Widget _buildTile({
    String title,
    String subtitle,
    String time,
  }) {
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          subhead: TextStyle(color: Colors.white),
          caption: TextStyle(color: Colors.grey),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              "https://vilamulher.com.br/imagens/thumbs/2014/11/10/4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570.jpg",
            ),
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(
          time,
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ChatScreen(title: title)),
          );
        },
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: Icon(Icons.home, color: Colors.grey)),
          Expanded(child: Icon(Icons.favorite_border, color: Colors.grey)),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
                Transform.translate(
                  offset: Offset(17, -10),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Icon(Icons.menu, color: Colors.grey)),
        ],
      ),
    );
  }
}
