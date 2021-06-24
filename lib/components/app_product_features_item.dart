import 'package:app_landing_page/sections/app_features_section/models/app_feature.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AppProductFeaturesCard extends StatefulWidget {
  // just press "Command + ."
  const AppProductFeaturesCard(
      {Key key, this.index, this.press, this.alignStart})
      : super(key: key);

  final int index;
  final Function press;
  final bool alignStart;

  @override
  _AppProductFeaturesCardState createState() => _AppProductFeaturesCardState();
}

class _AppProductFeaturesCardState extends State<AppProductFeaturesCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    String appFeaturesDemoText =
        "Get your blood tests delivered at home collect a sample from the news your blood tests.";

    if (!Responsive.isMobile(context)) {
      appFeaturesDemoText =
          "Get your blood tests delivered at \nhome collect a sample from the \nnews your blood tests.";
    }

    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      onTap: widget.press,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 200,
        ),
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: widget.alignStart
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(appProductFeatures[widget.index].imageBg),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Image(
                  width: kDefaultPadding * 2.5,
                  height: kDefaultPadding * 2.5,
                  fit: BoxFit.contain,
                  image: AssetImage(
                    appProductFeatures[widget.index].image,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 1.2,
            ),
            Text(
              appProductFeatures[widget.index].title,
              style: TextStyle(
                fontSize: 14,
                color: kPrimaryColor1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
            RichText(
              textAlign: widget.alignStart ? TextAlign.start : TextAlign.center,
              text: TextSpan(
                text: appFeaturesDemoText,
                style: TextStyle(
                  fontSize: 14,
                  color: kPrimaryColor2,
                  fontWeight: FontWeight.w600,
                  height: 1.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
