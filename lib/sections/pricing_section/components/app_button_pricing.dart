import 'package:app_landing_page/components/pricing_toggle_button.dart';
import 'package:app_landing_page/sections/pricing_section/components/selected_pricing_state.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppButtonPricing extends StatefulWidget {
  @override
  _AppButtonPricingState createState() => _AppButtonPricingState();
}

class _AppButtonPricingState extends State<AppButtonPricing> {
  @override
  Widget build(BuildContext context) {
    final activePricingState = SelectedPricingState.of(context);

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
            isActive: activePricingState.isActive,
            buttonPress: () {
              if (!activePricingState.isActive)
                activePricingState.setActivePricing(true);
            },
          ),
          PricingToggleButton(
            buttonText: "Annually",
            isActive: !activePricingState.isActive,
            buttonPress: () {
              if (activePricingState.isActive)
                activePricingState.setActivePricing(false);
            },
          ),
        ],
      ),
    );
  }
}
