import 'package:app_landing_page/constants.dart';
import 'package:app_landing_page/sections/featured_apps_section/models/app_feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_features_item.dart';

class AppFeaturesContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Awesome Apps \nfeatures",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            "Increase productivity with a simple to do app.App for \nmanaging your personal budgets.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 129, 131, 135),
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: appFeatures.length,
              scrollDirection: Axis.vertical,
              // On mobile this active dosen't mean anything
              itemBuilder: (BuildContext context, int index) {
                return AppFeaturesItem(
                  appFeature: appFeatures[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
