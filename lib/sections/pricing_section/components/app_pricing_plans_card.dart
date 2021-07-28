import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppPricingPlansCard extends StatefulWidget {
  // just press "Command + ."
  const AppPricingPlansCard({Key key, this.index, this.press})
      : super(key: key);

  final int index;
  final Function press;

  @override
  _AppPricingPlansCardState createState() => _AppPricingPlansCardState();
}

class _AppPricingPlansCardState extends State<AppPricingPlansCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      onTap: widget.press,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.4,
            color: kBgColor,
          ),
        ),
        duration: Duration(
          milliseconds: 200,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "appFeaturesDemoText",
                style: TextStyle(
                  fontSize: 14,
                  color: kPrimaryColor2,
                  fontWeight: FontWeight.w600,
                  height: 1.25,
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "appFeaturesDemoText",
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
