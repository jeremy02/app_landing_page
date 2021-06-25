import 'package:app_landing_page/components/app_product_features_item.dart';
import 'package:app_landing_page/components/default_button.dart';
import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppBuiltFeaturesContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: !Responsive.isDesktop(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        SectionTitle(
          text: "Ultimate features \nthat we built",
          fontSize: 24,
          alignStart: Responsive.isDesktop(context) ? true : false,
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        SectionCaption(
          fontSize: 14,
          alignStart: Responsive.isDesktop(context) ? true : false,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(0, context),
            SizedBox(
              width: kDefaultPadding,
            ),
            appFeaturesSectionItem(4, context),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appFeaturesSectionItem(3, context),
            SizedBox(
              width: kDefaultPadding,
            ),
            appFeaturesSectionItem(5, context),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        DefaultButton(
          buttonText: " See all ",
          buttonPress: () => {},
        ),
      ],
    );
  }

  Widget appFeaturesSectionItem(int index, BuildContext context) {
    if (!Responsive.isDesktop(context)) {
      return Flexible(
        flex: 1,
        child: AppProductFeaturesCard(
          index: index,
          alignStart: true,
          press: () {},
        ),
      );
    } else {
      return AppProductFeaturesCard(
        index: index,
        alignStart: true,
        press: () {},
      );
    }
  }
}
