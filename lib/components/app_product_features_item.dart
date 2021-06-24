import 'package:flutter/material.dart';

import '../constants.dart';

class AppProductFeaturesCard extends StatefulWidget {
  // just press "Command + ."
  const AppProductFeaturesCard(
      {Key key, this.index, this.press, this.alignStart})
      : super(key: key);

  final int index;
  final Function press;
  final bool alignStart;

  @override
  _AppProductFeaturesCardState createState() => _AppProductFeaturesCardState();
}

class _AppProductFeaturesCardState extends State<AppProductFeaturesCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          crossAxisAlignment: widget.alignStart
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  6.0,
                ),
                child: Image(
                  width: kDefaultPadding * 2.2,
                  height: kDefaultPadding * 2.2,
                  fit: BoxFit.contain,
                  image: AssetImage("assets/icons/ic_speed.png"),
                ),
              ),
            ),
            Text("App Development"),
            SizedBox(height: kDefaultPadding / 2),
          ],
        ),
      ),
    );
  }
}
