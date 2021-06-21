import 'package:flutter/material.dart' hide Router;
import "utils/routes.dart";
import "utils/router.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Router.generateRoute,
      initialRoute: homeRoute,
      debugShowCheckedModeBanner: false,
      title: 'Patmanager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
