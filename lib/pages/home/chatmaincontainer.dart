import 'package:ally_ui/utils/ally_collors.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';

class ChatContainePage extends StatefulWidget {
  @override
  _ChatContainePageState createState() => _ChatContainePageState();
}

class _ChatContainePageState extends State<ChatContainePage> {
  set currentColor(Color currentColor) {}

  set currentTitle(String currentTitle) {}

  set currentPage(int currentPage) {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          leading: IconButton(
            color: iconAppColor,
            icon: Icon(Icons.search), onPressed: null),
          actions: <Widget>[
            IconButton(
              color: iconAppColor,
              icon: Icon(
                Icons.person), 
                onPressed: null),
            IconButton(
              color: appBarColor,
              icon: Icon(Icons.settings), onPressed: null)
          ],
          bottom: TabBar(
            indicatorColor: Theme.of(context).accentColor,
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Theme.of(context).textTheme.caption.color,
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Message",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Tab(
                child: Text(
                  "Groups",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text("Welcome"),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 85.0,
                ),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: null,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: mainBottomNavBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainBottomNavBar() {
    return Container(
        height: 52,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.3),
            blurRadius: 5.0,
            spreadRadius: 0.3,
          )
        ]),
        width: MediaQuery.of(context).size.width * 0.9,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: CubertoBottomBar(
            barBackgroundColor: primaryColor,
            inactiveIconColor: inactiveBottomIcon,
            tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
            initialSelection: 0,
            drawer: CubertoDrawer.NO_DRAWER,
            tabs: [
              TabData(
                  iconData: Icons.chat,
                  title: "Message",
                  tabColor: Colors.white),
              TabData(
                  iconData: Icons.graphic_eq,
                  title: "Status",
                  tabColor: Colors.lightGreen),
              TabData(
                  iconData: Icons.rss_feed,
                  title: "Feeds",
                  tabColor: Colors.amber),
              TabData(
                  iconData: Icons.call, title: "Call", tabColor: Colors.teal),
            ],
            onTabChangedListener: (position, title, color) {
              setState(() {
                currentPage = position;
                currentTitle = title;
                currentColor = color;
              });
            },
          ),
        ));
  }
}
