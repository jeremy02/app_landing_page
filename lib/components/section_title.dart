import 'package:app_landing_page/constants.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  // just press "Command + ."
  const SectionTitle({Key key, this.text, this.fontSize, this.alignStart})
      : super(key: key);

  final String text;
  final bool alignStart;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: alignStart ? TextAlign.start : TextAlign.center,
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontSize: fontSize,
          color: kPrimaryColor1,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
      ),
    );
  }
}
