import 'package:app_landing_page/components/app_product_features_item.dart';
import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
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
        SectionTitle(
          text: "Why you should choose \nour app",
          fontSize: 24,
          alignStart: false,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SectionCaption(
          fontSize: 14,
          alignStart: false,
        ),
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
        SectionTitle(
          text: "Why you should choose \nour app",
          fontSize: 24,
          alignStart: false,
        ),
        SizedBox(
          height: 6.0,
        ),
        SectionTitle(
          fontSize: 14,
          alignStart: false,
        ),
        SectionCaption(
          fontSize: 14,
          alignStart: false,
        ),
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
}
