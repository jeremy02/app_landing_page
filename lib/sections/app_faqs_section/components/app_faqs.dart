import 'package:app_landing_page/components/section_title.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppFAQs extends StatefulWidget {
  String title;
  bool isExpanded;

  AppFAQs({Key key, this.title, this.isExpanded}) : super(key: key);

  @override
  _AppFAQstate createState() => _AppFAQstate();
}

class _AppFAQstate extends State<AppFAQs> {
  @override
  Widget build(BuildContext context) {
    String captionText =
        "Leverage agile frameworks to provide a robust synopsis for high level overviews, iterative approaches to corporate strategy faster collaborative thinking to further the overall"
        "value proposition.Originally grow the hollistic world view of disruptive innovation via workplace diversity and empowerment.";

    if (!Responsive.isMobile(context)) {
      captionText =
          "Leverage agile frameworks to provide a robust synopsis for high level overviews, iterative approaches \nto corporate strategy faster collaborative thinking to further the overall"
          "value proposition.Originally \ngrow the hollistic world view of disruptive innovation via workplace diversity and empowerment.";
    }

    return AnimatedContainer(
      duration: Duration(
        milliseconds: 250,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(239, 247, 249, 1.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SectionTitle(
                text: widget.title,
                fontSize: 14,
                alignStart: true,
              ),
              InkWell(
                child: Icon(
                  widget.isExpanded ? Icons.add : Icons.remove,
                  size: 18.0,
                ),
                onTap: () {
                  setState(() {
                    widget.isExpanded = !widget.isExpanded;
                  });
                },
              ),
            ],
          ),
          if (widget.isExpanded)
            SizedBox(
              height: kDefaultPadding,
            ),
          if (widget.isExpanded)
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: captionText,
                style: TextStyle(
                  fontSize: 14,
                  color: kPrimaryColor2,
                  fontWeight: FontWeight.w600,
                  height: 1.25,
                ),
              ),
            ),
          if (widget.isExpanded)
            SizedBox(
              height: kDefaultPadding * 2,
            ),
        ],
      ),
    );
  }
}
