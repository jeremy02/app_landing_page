import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_built_features_container.dart';

class AppBuildFeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size topSectionSize = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.topCenter,
      height: topSectionSize.height,
      width: double.infinity,
      decoration: BoxDecoration(),
      padding: EdgeInsets.only(
        top: 0,
        left: Responsive.isMobile(context) ? kDefaultPadding : 0,
      ),
      child: Responsive.isMobile(context)
          ? appBuiltFeaturesMobileLayout(context)
          : appBuiltFeaturesParentLayout(context),
    );
  }

  // build for mobile
  Widget appBuiltFeaturesMobileLayout(BuildContext context) {
    return Stack(
      children: [
        AppBuiltFeaturesImageContainer(),
        AppBuiltFeaturesContentContainer(context),
      ],
    );
  }

  // build for tablet and web
  Widget appBuiltFeaturesParentLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(flex: 8, child: AppBuiltFeaturesContentContainer(context)),
        Expanded(
          flex: 7,
          child: AppBuiltFeaturesImageContainer(),
        ),
      ],
    );
  }

  // build for tablet and web
  Widget AppBuiltFeaturesContentContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    );
  }
}
