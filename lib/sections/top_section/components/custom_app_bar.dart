import 'package:app_landing_page/components/default_button.dart';
import 'package:app_landing_page/sections/top_section/components/web_menu.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../controllers/MenuController.dart';

class CustomAppBar extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        Responsive.isMobile(context) ? 0 : 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              padding: EdgeInsets.only(right: kDefaultPadding / 4),
              onPressed: () {
                _controller.openOrCloseDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              splashColor: Colors.transparent,
            ),
          Image.asset(
            "assets/images/ic_logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          Spacer(
            flex: 2,
          ),
          if (Responsive.isDesktop(context)) WebMenu(),
          if (Responsive.isDesktop(context))
            SizedBox(
              width: kDefaultPadding,
            ),
          DefaultButton(
            buttonText: "Try for free",
            fontSize: 14.0,
            buttonPress: () => {},
          ),
        ],
      ),
    );
  }
}
