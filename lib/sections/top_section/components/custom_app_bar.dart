import 'package:app_landing_page/components/default_button.dart';
import 'package:app_landing_page/sections/top_section/components/web_menu.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        Responsive.isMobile(context) ? 0 : 20,
      ),
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              onPressed: () {
                print("onPressed");
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
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
            buttonPress: () => {},
          ),
        ],
      ),
    );
  }
}
