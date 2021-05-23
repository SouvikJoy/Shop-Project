import 'package:flutter/material.dart';
import 'package:shop_app/home-page.dart';
import 'package:shop_app/side_menu.dart';
import '../../constants.dart';
import 'package:shop_app/header.dart';
import 'controllers/MenuController.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Header(),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: SafeArea(child: HomePage()),
            ),
          ],
        ),
      ),
    );
  }
}
