import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/MenuController.dart';
import 'package:shop_app/responsive.dart';
import 'package:shop_app/socal.dart';
import 'constants.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
              Row(
                children: [
                if (!Responsive.isDesktop(context))
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _controller.openOrCloseDrawer();
                  },
                ),
                  SvgPicture.asset("../assets/icons/feather_twitter.svg"),
                  Spacer(),
                  if (Responsive.isDesktop(context)) WebMenu(),
                  Spacer(),
                  Socal(),
                ],
              ),
              SizedBox(height: kDefaultPadding * 2),
              Text(
                "Welcome to Levitate",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Text(
                  "Stay updated with the newest products and shops, accessories, \nand insights shared by Souvik Joy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    height: 1.5,
                  ),
                ),
              ),
              FittedBox(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Shop Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              if (Responsive.isDesktop(context))
                  SizedBox(height: kDefaultPadding),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
