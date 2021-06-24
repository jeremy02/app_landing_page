import 'package:app_landing_page/components/app_product_features_item.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AppProductFeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        Responsive.isMobile(context) ? kDefaultPadding : kDefaultPadding * 2,
      ),
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Responsive.isMobile(context)
          ? appProductFeaturesMobileLayout(context)
          : appProductFeaturesLayout(context),
    );
  }

  // build for mobile
  Widget appProductFeaturesMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        appProductFeaturesTitle(),
        SizedBox(
          height: kDefaultPadding,
        ),
        appProductFeaturesTitleCaption(context),
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(0),
            SizedBox(
              width: kDefaultPadding,
            ),
            appFeaturesSectionItem(1),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(2),
            SizedBox(
              width: kDefaultPadding,
            ),
            appFeaturesSectionItem(3),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(4),
            SizedBox(
              width: kDefaultPadding,
            ),
            appFeaturesSectionItem(5),
          ],
        ),
      ],
    );
  }

  // build for not mobile
  Widget appProductFeaturesLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        appProductFeaturesTitle(),
        SizedBox(
          height: kDefaultPadding,
        ),
        appProductFeaturesTitleCaption(context),
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(0),
            SizedBox(
              width: Responsive.isTablet(context)
                  ? kDefaultPadding
                  : kDefaultPadding * 1.5,
            ),
            appFeaturesSectionItem(1),
            SizedBox(
              width: Responsive.isTablet(context)
                  ? kDefaultPadding
                  : kDefaultPadding * 1.5,
            ),
            appFeaturesSectionItem(2),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(3),
            SizedBox(
              width: Responsive.isTablet(context)
                  ? kDefaultPadding
                  : kDefaultPadding * 1.5,
            ),
            appFeaturesSectionItem(4),
            SizedBox(
              width: Responsive.isTablet(context)
                  ? kDefaultPadding
                  : kDefaultPadding * 1.5,
            ),
            appFeaturesSectionItem(5),
          ],
        ),
      ],
    );
  }

  Widget appFeaturesSectionItem(int index) {
    return Flexible(
      flex: 1,
      child: AppProductFeaturesCard(
        index: index,
        alignStart: false,
        press: () {},
      ),
    );
  }

  Widget appProductFeaturesTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Why you should choose \nour app",
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          height: 1.2,
        ),
      ),
    );
  }

  Widget appProductFeaturesTitleCaption(BuildContext context) {
    String captionText =
        "The rise of mobile devices transforms the way we consume information entirely and the world's most elevaant channels such as Facebook.";

    if (!Responsive.isMobile(context)) {
      captionText =
          "The rise of mobile devices transforms the way we consume information entirely \nand the world's most elevaant channels such as Facebook.";
    }
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: captionText,
        style: TextStyle(
          fontSize: 14,
          color: kPrimaryColor2,
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
      ),
    );
  }
}
