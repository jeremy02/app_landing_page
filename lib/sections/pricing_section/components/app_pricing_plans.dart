import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'app_pricing_plans_card.dart';

class AppPricingPlans extends StatefulWidget {
  const AppPricingPlans({Key key, this.index, this.press}) : super(key: key);

  final int index;
  final Function press;

  @override
  _AppPricingPlansState createState() => _AppPricingPlansState();
}

class _AppPricingPlansState extends State<AppPricingPlans> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppPricingPlansCard(
          index: 0,
          press: () {},
        ),
        SizedBox(
          width: Responsive.isMobile(context) ? 10.0 : kDefaultPadding,
        ),
        AppPricingPlansCard(
          index: 1,
          press: () {},
        ),
      ],
    );
  }
}
