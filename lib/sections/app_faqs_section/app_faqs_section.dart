import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AppFAQsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1110,
          ),
          padding: EdgeInsets.all(
            kDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SectionTitle(
                text: "Frequently asked questions",
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
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Divider(),
        SizedBox(
          height: kDefaultPadding * 2,
        ),
      ],
    );
  }
}
