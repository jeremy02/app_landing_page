import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.buttonText,
    @required this.buttonPress,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback buttonPress;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        onPressed: buttonPress,
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 37, 0, 249),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical:
                kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 1.2),
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
    );
  }
}
