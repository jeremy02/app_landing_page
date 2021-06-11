import 'package:flutter/material.dart';

import '../../../constants.dart';

class TrustedCompanyItem extends StatefulWidget {
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
  _TrustedCompanyItemState createState() => _TrustedCompanyItemState();
}

class _TrustedCompanyItemState extends State<TrustedCompanyItem> {
  @override
  Widget build(BuildContext context) {
    bool _isHover = false;

    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(color: Colors.black38),
      ),
    );
  }
}
