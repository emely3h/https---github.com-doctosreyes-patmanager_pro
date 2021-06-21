import "package:flutter/material.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Patmanager Pro"),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
      ],
    );
  }
}
