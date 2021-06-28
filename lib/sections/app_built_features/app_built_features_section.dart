import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_built_features_content.dart';
import 'components/app_built_features_image_container.dart';

class AppBuildFeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: !Responsive.isDesktop(context)
          ? appBuiltFeaturesMobileLayout(context)
          : appBuiltFeaturesParentLayout(context),
    );
  }

  // build for mobile
  Widget appBuiltFeaturesMobileLayout(BuildContext context) {
    return Stack(
      children: [
        AppBuiltFeaturesImageContainer(),
        Padding(
          padding: EdgeInsets.all(
            kDefaultPadding,
          ),
          child: AppBuiltFeaturesContentContainer(),
        ),
      ],
    );
  }

  // build for tablet and web
  Widget appBuiltFeaturesParentLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 9,
          child: Row(
            children: [
              Expanded(
                child: Container(),
              ),
              AppBuiltFeaturesContentContainer(),
            ],
          ),
        ),
        Flexible(
          flex: 7,
          child: AppBuiltFeaturesImageContainer(),
        ),
      ],
    );
  }
}
