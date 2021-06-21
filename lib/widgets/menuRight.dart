import 'package:first_desktop_app/utils/routes.dart';
import 'package:flutter/material.dart';

class MenuRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(), // '_' means that the method or variable is only available in the current file => private
          _createDrawerItem(
              icon: Icons.folder_open,
              text: "Patienten-management",
              onTap: () => {
                    Navigator.pushNamed(context, homeRoute),
                  }),
          _createDrawerItem(
              icon: Icons.settings,
              text: "Patmanager Einstellungen",
              onTap: () => {
                    Navigator.pushNamed(context, settingsRoute),
                  }),
          _createDrawerItem(
              icon: Icons.help,
              text: "Online Support",
              onTap: () => {
                    Navigator.pushNamed(context, supportRoute),
                  }),
          Divider(),
        ],
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "Menü",
          ),
        ),
      ],
    ),
  );
}

Widget _createDrawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
