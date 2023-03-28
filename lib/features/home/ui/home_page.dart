import 'package:demoapp/features/home/ui/widget/home_body.dart';
import 'package:demoapp/features/home/ui/widget/home_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
}
