import 'package:app_landing_page/sections/trusted_companies/components/trusted_company_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'models/trusted_companies.dart';

class TrustedCompaniesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TrustedCompanyController _controller =
        Get.put(TrustedCompanyController());

    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: kDefaultPadding * 2,
        ),
        width: double.infinity,
        height: screenSize.height / 4,
        constraints: BoxConstraints(
          maxWidth: 1110,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding,
              ),
              child: Text(
                "Trusted by companies like",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  height: 1.0,
                ),
              ),
            ),
            Row(
              children: List.generate(
                _controller.trustedCompanies.length,
                (index) => TrustedCompanyItem(
                  title: _controller.trustedCompanies[index].title,
                  imagePath: _controller.trustedCompanies[index].imagePath,
                  press: () => (index) {
                    //
                    // print(index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
