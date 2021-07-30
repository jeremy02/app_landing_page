import 'package:app_landing_page/components/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppPricingPlansCard extends StatefulWidget {
  // just press "Command + ."
  const AppPricingPlansCard({
    Key key,
    this.index,
    this.price,
    this.planTitle,
    this.planDescription,
    this.actionText,
    this.hasTrial,
    this.press,
  }) : super(key: key);

  final int index;
  final int price;
  final String planTitle;
  final String planDescription;
  final String actionText;
  final bool hasTrial;
  final Function press;

  @override
  _AppPricingPlansCardState createState() => _AppPricingPlansCardState();
}

class _AppPricingPlansCardState extends State<AppPricingPlansCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: widget.index == 0 ? 0.0 : 1.4,
              color: widget.index == 0 ? Colors.transparent : kBgColor,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(239, 247, 249, 1.0),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 9), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          duration: Duration(
            milliseconds: 200,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              topContainer(),
              pricingItemsContainer(),
              DefaultButton(
                buttonText: widget.actionText,
                fontSize: 12.0,
                buttonPress: () => {},
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: widget.hasTrial ? "Or Start 14 days trial" : "",
                  style: TextStyle(
                    fontSize: 10,
                    color: kPrimaryColor3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
              onTap: () => widget.press,
            ),
          ),
        ),
      ],
    );
  }

  Widget topContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromRGBO(239, 247, 249, 1.0),
            Color.fromRGBO(239, 247, 249, 0.5),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '\$0',
                      style: TextStyle(
                        fontSize: 40,
                        color: kPrimaryColor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " / month",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Business Class',
                  style: TextStyle(
                    fontSize: 14,
                    color: kPrimaryColor1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "For small teams or office",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget pricingItemsContainer() {
    return Container(
      padding: EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Drag & Drop Builder",
              style: TextStyle(
                fontSize: 12,
                color: kTextColor.withOpacity(0.6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 1.5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "1000's of Templates",
              style: TextStyle(
                fontSize: 12,
                color: kTextColor.withOpacity(0.6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 1.5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Drag & Drop Builder",
              style: TextStyle(
                fontSize: 12,
                color: kTextColor.withOpacity(0.6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 1.5,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Drag & Drop Builder",
              style: TextStyle(
                fontSize: 12,
                color: kTextColor.withOpacity(0.6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
