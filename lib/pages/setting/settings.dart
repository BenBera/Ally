import 'package:ally_ui/pages/setting/setting_model.dart';
import 'package:ally_ui/utils/ally_collors.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List<SettingsModel> getSettingsModel() {
    List<SettingsModel> settingsList = [];

    return settingsList;
  }

  Widget profileWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
                child:
                    Icon(Icons.person_outline, size: 30.0, color: primaryColor)),
          ),
          Text(
            "Profile",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget blockedWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
              child: Icon(
                Icons.block,
                size: 30.0,
                color: primaryColor,
              ),
            ),
          ),
          Text(
            "Blocked",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget downloadPolicy() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
                child: Icon(Icons.file_download, size: 30.0, color: primaryColor)),
          ),
          Text(
            "Download Policy",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget statusSettings() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
                child: Icon(Icons.settings, size: 30.0, color: primaryColor)),
          ),
          Text(
            "Status Settings",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget syncWidget() {
    return ListTile(
      onTap: () => null,
      title: Container(
        margin: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                  child: CircleAvatar(
                    backgroundColor: appBarColor,
                      child: Icon(Icons.sync, size: 30.0, color: primaryColor)),
                ),
                Text(
                  "sync",
                  style: TextStyle(fontSize: 14.0, color: iconColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget helpWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
                child: Icon(Icons.help, size: 30.0, color: primaryColor)),
          ),
          Text(
            "Help",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget reportWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
            child: CircleAvatar(
              backgroundColor: appBarColor,
              child: Icon(
                Icons.report,
                size: 30.0,
                color: primaryColor,
              ),
            ),
          ),
          Text(
            "Report",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget appInformationWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
          ),
          Text(
            "App Information",
            style: TextStyle(fontSize: 14.0, color: iconColor),
          )
        ],
      ),
    );
  }

  Widget licenceWidget() {
    return ListTile(
        onTap: () => null,
        title: Row(
          children: <Widget>[
            Container(margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0)),
            Text(
              "licence",
              style: TextStyle(fontSize: 14.0, color: iconColor),
            )
          ],
        ));
  }

  Widget logutPolicyWidget() {
    return ListTile(
      onTap: () => null,
      title: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
          ),
          Text("Log Out",
              style: TextStyle(fontSize: 14.0, color:iconColor))
        ],
      ),
    );
  }

  final dividerWidget = Center(
    child: Divider(
      height: 10.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: iconAppColor,
        ),
      ),
      body: SingleChildScrollView(
              child: Container(
          color: settingbgColor,
          child: Column(
            children: <Widget>[
              profileWidget(),
              blockedWidget(),
              downloadPolicy(),
              statusSettings(),
              syncWidget(),
              helpWidget(),
              reportWidget(),
              appInformationWidget(),
              licenceWidget(),
              logutPolicyWidget()
            ],
          ),
        ),
      ),
    );
  }
}
