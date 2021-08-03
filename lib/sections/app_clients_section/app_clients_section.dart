import 'package:app_landing_page/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AppClientsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sectionSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: Responsive.isMobile(context)
            ? kDefaultPadding
            : kDefaultPadding * 2,
      ),
      decoration: BoxDecoration(
        color: Colors.black45.withOpacity(0.2),
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: sectionSize.width / 2 + 100,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/app_clients_bg.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
