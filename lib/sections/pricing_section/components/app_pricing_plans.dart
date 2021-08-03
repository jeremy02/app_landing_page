import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'app_pricing_plans_card.dart';

class AppPricingPlans extends StatefulWidget {
  final int index;
  final Function press;
  final bool monthlyActive;

  const AppPricingPlans({Key key, this.index, this.press, this.monthlyActive})
      : super(key: key);

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
          price: 0,
          monthlyActive: widget.monthlyActive,
          planTitle: "Business Class",
          planDescription: "For small teams or office",
          actionText: "Start free trial",
          hasTrial: false,
          press: () {},
        ),
        SizedBox(
          width: Responsive.isMobile(context) ? 10.0 : kDefaultPadding,
        ),
        AppPricingPlansCard(
          index: 1,
          price: 90,
          monthlyActive: widget.monthlyActive,
          planTitle: "Pro Master",
          planDescription: "For Best Opportunities",
          actionText: "Subscribe Now",
          hasTrial: true,
          press: () {},
        ),
      ],
    );
  }
}
