import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String title;

  const ChatScreen({Key key, this.title}) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          widget?.title ?? "Person",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 69),
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 25),
              children: <Widget>[
                _buildNotification(
                  "To start with chat confirm this conversation",
                  Icons.check,
                ),
                _buildSelfMessage("Hi Lexie, gou are you?", "20:20"),
                _buildFriendMessage(
                  "Hey Deivão, I am fine thank you are you?",
                  "20 minutes ago",
                ),
                _buildFriendMessage(
                  "Hey Deivão, I am fine thank you are you?",
                  "20 minutes ago",
                ),
                _buildSelfMessage("Hi Lexie, gou are you?", "20:20"),
                _buildFriendMessage(
                  "Hey Deivão, I am fine thank you are you?",
                  "20 minutes ago",
                ),
                _buildFriendMessage(
                  "Hey Deivão, I am fine thank you are you?",
                  "20 minutes ago",
                ),
                _buildSelfMessage("Hi Lexie, gou are you?", "20:20"),
                _buildFriendMessage(
                  "Hey Deivão, I am fine thank you are you?",
                  "20 minutes ago",
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildBottomBar(),
          )
        ],
      ),
    );
  }

  Widget _buildNotification(String content, IconData icon) {
    const Color color = Color(0xFF3BF9DD);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 13,
              bottom: 13,
              left: 15,
              right: 55,
            ),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Text(
              content,
              style: TextStyle(color: color, fontSize: 13),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            padding: EdgeInsets.all(10),
            child: Icon(icon, color: Colors.white, size: 19),
          )
        ],
      ),
    );
  }

  Widget _buildSelfMessage(String text, String time) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250),
      padding: EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Container(
              color: Color(0xFF2C2C36),
              padding: EdgeInsets.all(17),
              width: MediaQuery.of(context).size.height * 0.3,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFriendMessage(String text, String time) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CircleAvatar(),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  color: Color(0xFFEF495F),
                  padding: EdgeInsets.all(17),
                  width: MediaQuery.of(context).size.height * 0.3,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.grey,
                height: 1.5,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: BorderDirectional(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 25),
                hintText: "Type your message",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.image, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            onPressed: () {},
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: EdgeInsets.only(right: 20, left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFEF495F),
            ),
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
