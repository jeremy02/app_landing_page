import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_button_pricing.dart';
import 'components/app_pricing_plans.dart';
import 'components/selected_pricing_state.dart';

class AppPricingSection extends StatefulWidget {
  @override
  _AppPricingSectionState createState() => _AppPricingSectionState();
}

class _AppPricingSectionState extends State<AppPricingSection> {
  bool monthlyActive = true;

  void setActivePricing(bool isMonthlyActive) {
    setState(() {
      monthlyActive = isMonthlyActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: Responsive.isDesktop(context) ? kDefaultPadding : 0,
          ),
          padding: EdgeInsets.all(
            kDefaultPadding,
          ),
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1110,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SectionTitle(
                text: "Get awesome features, without\nextra charges",
                fontSize: 24,
                alignStart: false,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              SectionCaption(
                fontSize: 14,
                alignStart: false,
              ),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              SelectedPricingState(
                isActive: monthlyActive,
                setActivePricing: setActivePricing,
                child: AppButtonPricing(),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              AppPricingPlans(
                monthlyActive: monthlyActive,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Divider(),
        SizedBox(
          height: kDefaultPadding,
        ),
      ],
    );
  }
}
