import 'package:app_landing_page/components/pricing_toggle_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppButtonPricingToggle extends StatefulWidget {
  @override
  _AppButtonPricingToggleState createState() => _AppButtonPricingToggleState();
}

class _AppButtonPricingToggleState extends State<AppButtonPricingToggle> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(
        2.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          width: 1.4,
          color: kBgColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PricingToggleButton(
            buttonText: "Monthly",
            isActive: _isActive,
            buttonPress: () {
              setState(() {
                _isActive = !_isActive;
              });
            },
          ),
          PricingToggleButton(
            buttonText: "Annually",
            isActive: !_isActive,
            buttonPress: () {
              setState(() {
                _isActive = !_isActive;
              });
            },
          ),
        ],
      ),
    );
  }
}
