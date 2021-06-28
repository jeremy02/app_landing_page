import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/app_button_pricing_toggle.dart';

class AppPricingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: kDefaultPadding * 2,
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
              AppButtonPricingToggle()
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
