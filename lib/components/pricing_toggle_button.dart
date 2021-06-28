import 'package:flutter/material.dart';

import '../constants.dart';

class PricingToggleButton extends StatelessWidget {
  const PricingToggleButton({
    Key key,
    @required this.buttonText,
    @required this.isActive,
    @required this.buttonPress,
  }) : super(key: key);

  final String buttonText;
  final bool isActive;
  final VoidCallback buttonPress;

  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: ElevatedButton(
              onPressed: buttonPress,
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor3,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 2.0,
            ),
            child: TextButton(
              onPressed: buttonPress,
              child: Text.rich(
                TextSpan(
                  text: buttonText,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
  }
}
