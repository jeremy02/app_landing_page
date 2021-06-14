import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_features_content_container.dart';
import 'components/app_features_image_container.dart';

class AppFeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double kDefaultPaddingS = kDefaultPadding;

    if (Responsive.isDesktop(context)) {
      kDefaultPaddingS = kDefaultPadding * 4;
    }

    // if is tablet
    if (Responsive.isTablet(context)) {
      kDefaultPaddingS = kDefaultPadding * 2;
    }

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPaddingS,
        right: kDefaultPaddingS,
        bottom: kDefaultPaddingS,
      ),
      width: double.infinity,
      child: Responsive.isMobile(context)
          ? featuredAppsMobileLayout(context)
          : featuredAppsParentLayout(context),
    );
  }

  // build for mobile
  Widget featuredAppsMobileLayout(BuildContext context) {
    return Stack(
      children: [
        AppFeaturesImageContainer(),
        AppFeaturesContentContainer(),
      ],
    );
  }

  // build for tablet and web
  Widget featuredAppsParentLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 6,
          child: AppFeaturesImageContainer(),
        ),
        Expanded(
          flex: 7,
          child: AppFeaturesContentContainer(),
        ),
      ],
    );
  }
}