import 'package:ally_ui/pages/setting/settings.dart';
import 'package:ally_ui/pages/status/my_statuses.dart';
import 'package:ally_ui/utils/ally_collors.dart';
import 'package:ally_ui/utils/bubbleBottomBar.dart';
import 'package:flutter/material.dart';

class ChatContainePage extends StatefulWidget {
  @override
  _ChatContainePageState createState() => _ChatContainePageState();
}

class _ChatContainePageState extends State<ChatContainePage> {
  int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  // set currentColor(Color currentColor) {}

  // set currentTitle(String currentTitle) {}

  // set currentPage(int currentPage) {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          backgroundColor: Colors.white,
          leading: IconButton(
              color: iconAppColor, icon: Icon(Icons.search), onPressed: null),
          actions: <Widget>[
            IconButton(
                color: iconAppColor, icon: Icon(Icons.person), onPressed: null),
            IconButton(
                color: iconAppColor, icon: Icon(Icons.settings), onPressed:(){
                  Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> SettingPage()
               
              ));
                })
          ],
          bottom: TabBar(
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Message",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              Tab(
                child: Text(
                  "Groups",
                  style: TextStyle(color: primaryColor),
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
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MyStatusesPage())),
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
          child: BubbleBottomBar(
          backgroundColor: primaryColor,
          opacity: 1,
          currentIndex: currentIndex,
          onTap: changePage,
          elevation: 0,
          items: [
            BubbleBottomBarItem(
              backgroundColor: bottomNavBar,
              icon: Icon(
                Icons.chat_bubble_outline,
                color: inactiveBottomIcon,
              ),
              activeIcon: Icon(
                Icons.chat_bubble_outline,
                color: textBottomNavBar,
                
              ),
              title: Text(
                "Chats",
                style: TextStyle(color: textBottomNavBar),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: bottomNavBar,
              icon: Icon(
                Icons.sync,
                color: inactiveBottomIcon,
              ),
              activeIcon: Icon(
                Icons.sync,
                color: textBottomNavBar,
              ),
              title: Text(
                "Status",
                style: TextStyle(color: textBottomNavBar),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: bottomNavBar,
              icon: Icon(
                Icons.rss_feed,
                color: inactiveBottomIcon,
              ),
              activeIcon: Icon(
                Icons.rss_feed,
                color: textBottomNavBar,
              ),
              title: Text(
                "Feeds",
                style: TextStyle(color: textBottomNavBar),
              ),
            ),
            BubbleBottomBarItem(
              backgroundColor: bottomNavBar,
              icon: Icon(
                Icons.local_phone,
                color: inactiveBottomIcon,
              ),
              activeIcon: Icon(
                Icons.local_phone,
                color: textBottomNavBar,
              ),
              title: Text(
                "Calls",
                style: TextStyle(color: textBottomNavBar),
              ),
            )
          ],
        ),
      ),
          // child: CubertoBottomBar(
          //   barBackgroundColor: primaryColor,
          //   inactiveIconColor: inactiveBottomIcon,
          //   tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          //   initialSelection: 0,
          //   drawer: CubertoDrawer.NO_DRAWER,
          //   tabs: [
          //     TabData(
          //         iconData: Icons.chat,
          //         title: "Message",
          //         tabColor: Colors.white),
          //     TabData(
          //       onclick: (){
          //         Navigator.push(context, MaterialPageRoute(builder: (context)=> MyStatusesPage()));
          //       },
          //         iconData: Icons.graphic_eq,
          //         title: "Status",
          //         tabColor:iconColor),
          //     TabData(
          //         iconData: Icons.rss_feed,
          //         title: "Feeds",
          //         tabColor: Colors.amber),
          //     TabData(
          //         iconData: Icons.call, title: "Call", tabColor: Colors.teal),
          //   ],
          //   onTabChangedListener: (position, title, bottomAppBar) {
          //     setState(() {
          //       currentPage = position;
          //       currentTitle = title;
          //       currentColor = bottomNavBar;
          //     });
          //   },
          // ),
        );
  }
}
