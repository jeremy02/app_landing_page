import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/sections/app_features_section/app_features_section.dart';
import 'package:app_landing_page/sections/app_rewards/app_rewards_section.dart';
import 'package:app_landing_page/sections/top_section/top_section.dart';
import 'package:app_landing_page/sections/trusted_companies/trusted_companies_section.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/MenuController.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Scaffold(
      key: _controller.scaffoldkey,
      body: Responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              // SizedBox(height: kDefaultPadding * 2),
              TrustedCompaniesSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              AppFeaturesSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              AppRewardsSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        tablet: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              // SizedBox(height: kDefaultPadding * 2),
              TrustedCompaniesSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              AppFeaturesSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
              AppRewardsSection(),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        desktop: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              // SizedBox(height: kDefaultPadding * 2),
              TrustedCompaniesSection(),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              AppFeaturesSection(),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              AppRewardsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
