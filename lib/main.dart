import 'package:demoapp/features/home/ui/home_page.dart';
import 'package:demoapp/features/home/ui/widget/home_body.dart';
import 'package:demoapp/features/home/ui/widget/pokemon_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}
