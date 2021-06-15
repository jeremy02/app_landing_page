import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/sections/top_section/components/custom_app_bar.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'components/top_container_body.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size topSectionSize = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      height: topSectionSize.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsets.all(
          kDefaultPadding,
        ),
        child: Stack(
          children: [
            topSectionBackground(topSectionSize.height),
            topSectionBody(context),
          ],
        ),
      ),
    );
  }

  Widget topSectionBackground(double height) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: height / 4,
          minHeight: (height / 4) - 50,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/top_background_bg.png"),
          ),
        ),
      ),
    );
  }

  Widget topSectionBody(BuildContext context) {
    double kDefaultPaddingS = kDefaultPadding;

    if (Responsive.isDesktop(context)) {
      kDefaultPaddingS = kDefaultPadding * 4;
    }

    // if is tablet
    if (Responsive.isTablet(context)) {
      kDefaultPaddingS = kDefaultPadding;
    }

    return Positioned.fill(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context)
              ? kDefaultPadding / 2
              : kDefaultPaddingS,
        ),
        width: double.infinity,
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: kDefaultPadding / 10,
            ),
            Expanded(
              child: TopContainerBody(),
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
          ],
        ),
      ),
    );
  }
}
