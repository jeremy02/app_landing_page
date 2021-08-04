import 'package:app_landing_page/components/section_caption.dart';
import 'package:app_landing_page/components/section_title.dart';
import 'package:app_landing_page/sections/app_faqs_section/components/app_faqs.dart';
import 'package:app_landing_page/utils/responsive.dart';
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
          height: Responsive.isDesktop(context)
              ? kDefaultPadding * 2
              : kDefaultPadding,
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
              AppFAQs(
                title: "How to contact with riders emergency?",
                isExpanded: true,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
              AppFAQs(
                title:
                    "App installation failed,how to update system information?",
                isExpanded: false,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
              AppFAQs(
                title: "Website response taking time,how to improve?",
                isExpanded: false,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
              AppFAQs(
                title: "New update fixed fixed all bug and issues",
                isExpanded: false,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
              AppFAQs(
                title: "How to contact with riders emergency?",
                isExpanded: false,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? kDefaultPadding * 2
              : kDefaultPadding,
        ),
        Divider(),
        SizedBox(
          height: Responsive.isDesktop(context)
              ? kDefaultPadding * 2
              : kDefaultPadding,
        ),
      ],
    );
  }
}
