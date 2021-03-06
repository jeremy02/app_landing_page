import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.buttonText,
    @required this.buttonPress,
    @required this.fontSize,
  }) : super(key: key);

  final String buttonText;
  final double fontSize;
  final VoidCallback buttonPress;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        onPressed: buttonPress,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor3,
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context)
                ? kDefaultPadding * 2
                : kDefaultPadding * 0.8,
            vertical:
                kDefaultPadding / (Responsive.isDesktop(context) ? 1.2 : 1.2),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
