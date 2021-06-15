import 'package:app_landing_page/sections/app_rewards/models/app_reward.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppRewardsItem extends StatelessWidget {
  const AppRewardsItem({
    Key key,
    @required this.appReward,
  }) : super(key: key);

  final AppReward appReward;

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(milliseconds: 200);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: kDefaultPadding,
        ),
        AnimatedContainer(
          duration: duration,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: appReward.titleColor.withOpacity(0.2),
          ),
          child: Padding(
            padding: EdgeInsets.all(
              kDefaultPadding / 2,
            ),
            child: Image(
              width: kDefaultPadding * 2.2,
              height: kDefaultPadding * 2.2,
              fit: BoxFit.contain,
              image: AssetImage(appReward.image),
            ),
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        if (!Responsive.isDesktop(context))
          Center(
            child: featureDescription(context),
          ),
        if (Responsive.isDesktop(context)) featureDescription(context),
        SizedBox(
          height: kDefaultPadding,
        ),
      ],
    );
  }

  // show the view for the app rewards description
  Widget featureDescription(BuildContext context) {
    String appRewardsDemoText =
        "Get your blood tests delivered at home collect a sample from the news your blood tests.";

    if (Responsive.isDesktop(context)) {
      appRewardsDemoText =
          "Get your blood tests delivered at \nhome collect a sample from the \nnews your blood tests.";
    }

    return Column(
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Text(
          appReward.title,
          style: TextStyle(
            fontSize: 14,
            color: appReward.titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 3,
        ),
        RichText(
          textAlign: Responsive.isDesktop(context)
              ? TextAlign.start
              : TextAlign.center,
          text: TextSpan(
            text: appRewardsDemoText,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 129, 131, 135),
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
