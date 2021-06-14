import 'package:app_landing_page/components/default_button.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopContainerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Responsive.isMobile(context)
            ? topContainerMobileLayout(context)
            : topContainerParentLayout(context));
  }

  // build for mobile
  Widget topContainerMobileLayout(BuildContext context) {
    return Stack(
      children: [
        topContainerImageLayout(context),
        topContainerTextLayout(context),
      ],
    );
  }

  // build for tablet and web
  Widget topContainerParentLayout(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: topContainerTextLayout(context),
          ),
        ),
        Flexible(
          child: topContainerImageLayout(context),
        ),
      ],
    );
  }

  // this displays the top containers image
  Widget topContainerImageLayout(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Opacity(
            opacity: Responsive.isMobile(context) ? 0.1 : 1.0,
            child: Container(
              height: Responsive.isMobile(context)
                  ? constraints.maxHeight - 50
                  : constraints.maxHeight,
              width: Responsive.isMobile(context)
                  ? constraints.maxWidth - 100
                  : constraints.maxWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/top_image_1.png"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // this displays the top containers text
  Widget topContainerTextLayout(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                editorsChoiceLayout(),
                SizedBox(
                  height: kDefaultPadding / 1.5,
                ),
                Text(
                  "Best App for your \nmodern lifestyle",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  "Increase productivity with a simple to do app.App for \nmanaging your personal budgets.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding * 1.5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultButton(
                      buttonText: "Try for free",
                      buttonPress: () => {},
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: "Watch demo video",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 37, 0, 249),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // show the view for the editors choice
  Widget editorsChoiceLayout() {
    //
    return FittedBox(
      child: Container(
        padding: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromARGB(255, 226, 234, 237),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orangeAccent,
              ),
              child: Image.asset(
                "assets/icons/ic_verified.png",
                color: Colors.white,
                width: 20,
                height: 20,
              ),
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "#1 Editors Choice App of 2020",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: kDefaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
