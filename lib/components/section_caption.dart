import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

class SectionCaption extends StatelessWidget {
  // just press "Command + ."
  const SectionCaption({Key key, this.text, this.fontSize, this.alignStart})
      : super(key: key);

  final String text;
  final bool alignStart;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    String captionText =
        "The rise of mobile devices transforms the way we consume information entirely and the world's most elevant channels such as Facebook.";

    if (!Responsive.isMobile(context)) {
      captionText =
          "The rise of mobile devices transforms the way we consume information entirely \nand the world's most elevant channels such as Facebook.";
    }
    return RichText(
      textAlign: alignStart ? TextAlign.start : TextAlign.center,
      text: TextSpan(
        text: captionText,
        style: TextStyle(
          fontSize: 14,
          color: kPrimaryColor2,
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
      ),
    );
  }
}
