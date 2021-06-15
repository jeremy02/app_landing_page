import 'package:app_landing_page/sections/app_rewards/models/app_reward.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_rewards_item.dart';

class AppRewardsListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                appRewards.length,
                (index) => AppRewardsItem(
                  appReward: appRewards[index],
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                appRewards.length,
                (index) => AppRewardsItem(
                  appReward: appRewards[index],
                ),
              ),
            ),
    );
  }
}
