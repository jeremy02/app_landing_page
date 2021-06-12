import 'package:app_landing_page/constants.dart';
import 'package:flutter/material.dart';

class TrustedCompanyItem extends StatelessWidget {
  const TrustedCompanyItem({
    Key key,
    @required this.title,
    @required this.imagePath,
    @required this.press,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(milliseconds: 200);

    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: press,
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: AnimatedContainer(
              duration: duration,
              width: kDefaultPadding * 5,
              height: kDefaultPadding * 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
      ],
    );
  }
}
