import 'package:app_landing_page/sections/app_rewards/app_rewards_code_integration_container.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'app_rewards_list_container.dart';
import 'app_rewards_top_container.dart';

class AppRewardsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding,
          ),
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1110,
          ),
          child: Column(
            children: [
              AppRewardsTopContainer(),
              SizedBox(
                height: Responsive.isDesktop(context)
                    ? kDefaultPadding * 2
                    : kDefaultPadding / 2,
              ),
              AppRewardsListContainer(),
              // CodeIntegrationContainer(),
            ],
          ),
        ),
        CodeIntegrationContainer(),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? kDefaultPadding * 2
              : kDefaultPadding,
        ),
        Divider(),
        SizedBox(
          height: kDefaultPadding,
        ),
      ],
    );
  }
}
