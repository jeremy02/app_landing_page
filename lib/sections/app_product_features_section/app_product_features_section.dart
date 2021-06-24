import 'package:app_landing_page/components/app_product_features_item.dart';
import 'package:app_landing_page/sections/trusted_companies/models/trusted_company.dart';
import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class AppProductFeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TrustedCompanyController _controller =
        Get.put(TrustedCompanyController());

    Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 0 : screenSize.width / 8,
      ),
      padding: EdgeInsets.all(
        Responsive.isMobile(context) ? kDefaultPadding : kDefaultPadding * 2,
      ),
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      color: Colors.blue,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: _controller.trustedCompanies.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 0,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 24,
          childAspectRatio: Responsive.isMobile(context)
              ? 1
              : screenSize.width / screenSize.height,
        ),
        itemBuilder: (context, index) {
          return AppProductFeaturesCard(
            index: index,
            alignStart: false,
            press: () {},
          );
        },
      ),
    );
  }
}
