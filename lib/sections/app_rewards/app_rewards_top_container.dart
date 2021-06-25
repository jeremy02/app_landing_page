import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
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
                SectionCaption(
                  fontSize: 14,
                  alignStart: true,
                ),
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
                  child: SectionCaption(
                    fontSize: 14,
                    alignStart: true,
                  ),
                ),
              ],
            ),
    );
  }

  Widget appRewardsTitleText(BuildContext context) {
    String titleText =
        "Smart Jackpots that \nyou may love this \nanytime & anywhere";

    if (Responsive.isDesktop(context)) {
      titleText = "Smart Jackpots that you may love this anytime & anywhere";
    }

    return SectionTitle(
      text: titleText,
      fontSize: 24,
      alignStart: true,
    );
  }
}
