import 'package:app_landing_page/sections/trusted_companies/components/trusted_company_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'models/trusted_company.dart';

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
          horizontal: kDefaultPadding,
        ),
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: kMaxWidth,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                      _controller.trustedCompanies.length,
                      (index) => TrustedCompanyItem(
                        title: _controller.trustedCompanies[index].title,
                        imagePath:
                            _controller.trustedCompanies[index].imagePath,
                        press: () => (index) {
                          //
                          // print(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
