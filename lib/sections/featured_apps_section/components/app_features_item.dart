import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/sections/featured_apps_section/models/app_feature.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

class AppFeaturesItem extends StatelessWidget {
  const AppFeaturesItem({
    Key key,
    @required this.appFeature,
  }) : super(key: key);

  final AppFeature appFeature;

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(milliseconds: 200);

    return Padding(
      padding: EdgeInsets.only(
        bottom: kDefaultPadding * 1.5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appFeature.titleColor.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                width: kDefaultPadding * 2.2,
                height: kDefaultPadding * 2.2,
                fit: BoxFit.contain,
                image: AssetImage(appFeature.image),
              ),
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            flex: 3,
            child: featureDescription(context),
          ),
          if (!Responsive.isMobile(context))
            Flexible(
              flex: 2,
              child: Container(),
            ),
        ],
      ),
    );
  }

  // show the view for the app feautures description
  Widget featureDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appFeature.title,
          style: TextStyle(
            fontSize: 14,
            color: appFeature.titleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: kDefaultPadding / 3,
        ),
        Text(
          appFeature.description,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 129, 131, 135),
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
