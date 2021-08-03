import 'package:flutter/material.dart';

class SelectedPricingState extends InheritedWidget {
  final bool isActive;
  final Widget child;
  final Function setActivePricing;

  SelectedPricingState(
      {Key key, this.isActive, this.child, this.setActivePricing})
      : super(key: key, child: child);

  static SelectedPricingState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<SelectedPricingState>());
  }

  @override
  bool updateShouldNotify(SelectedPricingState oldWidget) {
    //return true;
    return isActive != oldWidget.isActive;
  }
}
