import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

class AppRewardsTopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 0 : kDefaultPadding,
      ),
      child: Responsive.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appRewardsTitleText(context),
                SizedBox(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                    ),
                    width: double.infinity,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: kTextColor,
                    ),
                  ),
                ),
                appRewardsDescriptionText(context),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: appRewardsTitleText(context),
                ),
                SizedBox(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: screenSize.width / 20,
                      right: screenSize.width / 50,
                    ),
                    width: 0.5,
                    constraints: BoxConstraints(
                      maxHeight: 80,
                    ),
                    decoration: BoxDecoration(
                      color: kTextColor,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: appRewardsDescriptionText(context),
                ),
              ],
            ),
    );
  }

  Widget appRewardsTitleText(BuildContext context) {
    String titleText =
        "Smart Jackpots that \nyou may love this \nanytime & anywhere";

    if (Responsive.isMobile(context)) {
      titleText = "Smart Jackpots that you may love this anytime & anywhere";
    }

    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: titleText,
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          height: 1.2,
        ),
      ),
    );
  }

  Widget appRewardsDescriptionText(BuildContext context) {
    String descText =
        "The rise of mobile devices transforms the way we \nconsume information entirely and the world's most \nrelevant channels such as facebook.";

    if (Responsive.isMobile(context)) {
      descText =
          "The rise of mobile devices transforms the way we consume information entirely and the world's most relevant channels such as facebook.";
    }
    return RichText(
      text: TextSpan(
        text: descText,
        style: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 129, 131, 135),
          fontWeight: FontWeight.w500,
          height: 1.2,
        ),
      ),
    );
  }
}
