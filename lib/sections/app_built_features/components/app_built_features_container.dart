import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppBuiltFeaturesImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Opacity(
      opacity: Responsive.isMobile(context) ? 0.08 : 1.0,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding * 3,
        ),
        height: 500,
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/ic_built_features_bg.png",
                    ),
                    height: screenSize.height,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(
                width: screenSize.width < 800 ? screenSize.width * 0.70 : 500,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: kDefaultPadding,
                      ),
                      child: Image(
                        image: AssetImage(
                          "assets/images/ic_built_features_image_1.png",
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image(
                        image: AssetImage(
                          "assets/images/ic_built_features_image_2.png",
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
