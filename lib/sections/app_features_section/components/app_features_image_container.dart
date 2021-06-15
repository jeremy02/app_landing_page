import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppFeaturesImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Opacity(
      opacity: Responsive.isMobile(context) ? 0.08 : 1.0,
      child: Container(
        height: 500,
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Container(
                height: 350,
                width: screenSize.width < 800 ? screenSize.width / 3 : 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/feature_image_bg1.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/feature_image_1.png",
                    ),
                    height: 500,
                    width: screenSize.width < 800 ? screenSize.width / 3 : 450,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
