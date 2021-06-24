import 'package:app_landing_page/components/default_button.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CodeIntegrationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    double kDefaultPaddingS = kDefaultPadding;

    if (Responsive.isDesktop(context)) {
      kDefaultPaddingS = kDefaultPadding * 2;
    }

    // if is tablet
    if (Responsive.isTablet(context)) {
      kDefaultPaddingS = kDefaultPadding * 2;
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(
        kDefaultPaddingS,
        kDefaultPadding,
        kDefaultPaddingS,
        kDefaultPadding,
      ),
      padding: EdgeInsets.all(10.0),
      constraints: BoxConstraints(
        maxWidth: kMaxWidth,
      ),
      child: Responsive.isMobile(context)
          ? Stack(
              children: [
                leftContent(context),
                rightContent(
                  context,
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 11,
                  child: leftContent(context),
                ),
                if (Responsive.isTablet(context))
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                Flexible(
                  flex: 8,
                  child: rightContent(context),
                )
              ],
            ),
    );
  }

  Widget leftContent(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Opacity(
          opacity: Responsive.isMobile(context) ? 0.05 : 1.0,
          child: Container(
            width: constraints.maxWidth,
            height: constraints.maxWidth * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/code_integration.png"),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget rightContent(BuildContext context) {
    String demoText =
        "The rise of mobile devices transforms the way we\nconsume information entirely and the world's most\nrelevant channels such as Facebook.";

    if (Responsive.isMobile(context)) {
      demoText =
          "The rise of mobile devices transforms the way we consume information entirely and the world's most relevant channels such as Facebook.";
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kDefaultPadding,
        ),
        RichText(
          text: TextSpan(
            text: "Designed & built by \nthe latest code \nintegration",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        RichText(
          text: TextSpan(
            text: demoText,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 129, 131, 135),
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        DefaultButton(
          buttonText: "Learn More",
          buttonPress: () => {},
        ),
      ],
    );
  }
}
