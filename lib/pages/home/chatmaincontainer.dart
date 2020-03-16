import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';

class ChatContainePage extends StatefulWidget {
  @override
  _ChatContainePageState createState() => _ChatContainePageState();
}

class _ChatContainePageState extends State<ChatContainePage> {
  var inactiveColor= Colors.blueAccent;

  set currentColor(Color currentColor) {}

  set currentTitle(String currentTitle) {}

  set currentPage(int currentPage) {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2 ,
          child: Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          bottom: TabBar(
            indicatorColor: Theme.of(context).accentColor,
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Theme.of(context).textTheme.caption.color,
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Message",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              Tab(
                child: Text(
                  "Groups",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
        body: Center(child: Text("Welcome")),
        floatingActionButton: FloatingActionButton(onPressed: null, child: Icon(Icons.add),
        ),
        bottomNavigationBar: CubertoBottomBar(
          inactiveIconColor: inactiveColor,
          tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          initialSelection: 0,
          drawer: CubertoDrawer.NO_DRAWER,
          tabs: [
            TabData(
                iconData: Icons.chat,
                title: "Message",
                tabColor: Colors.blueAccent),
            TabData(
                iconData: Icons.graphic_eq,
                title: "Status",
                tabColor: Colors.lightGreen),
            TabData(
                iconData: Icons.rss_feed, title: "Feeds", tabColor: Colors.amber),
            TabData(iconData: Icons.call, title: "Call", tabColor: Colors.teal),
          ],
          onTabChangedListener: (position, title, color) {
            setState(() {
              currentPage = position;
              currentTitle = title;
              currentColor = color;
            });
          },
        ),
      ),
    );
  }
}
