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
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image(
                    width: screenSize.width,
                    height: screenSize.height / 1.8,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/feature_image_bg1.png"),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Image(
                    width: screenSize.width / 3.8,
                    height: screenSize.height / 3.2,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/feature_image_bg2.png"),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(
                  bottom: screenSize.height / 14,
                ),
                child: Image(
                  width: screenSize.width,
                  height: screenSize.height / 1.4,
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/feature_image_1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
