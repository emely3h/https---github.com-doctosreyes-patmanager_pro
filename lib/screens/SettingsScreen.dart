import 'package:flutter/material.dart';
import "../widgets/customAppBar.dart";
import "../widgets/menuRight.dart";

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: MenuRight(),
      body: Center(
        child: Text("Settings Screen"),
      ),
    );
  }
}
