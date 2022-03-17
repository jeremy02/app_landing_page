import 'dart:async';

import 'package:app_landing_page/controllers/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kBgColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3.5,
                  ),
                  child: Image.asset(
                    "assets/images/ic_logo.png",
                    height: 25,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                    // after 1 second close the drawer
                    Timer(Duration(milliseconds: 500), () {
                      _controller.openOrCloseDrawer();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kTextColor;
    } else if (!widget.isActive & _isHover) {
      return kTextColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        duration: kDefaultDuration,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 2,
            ),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          selected: widget.isActive,
          hoverColor: _borderColor(),
          selectedTileColor: kPrimaryColor,
          onTap: widget.press,
          title: Text(
            widget.title,
            style: TextStyle(
              color: kBodyTextColor,
              fontWeight: widget.isActive ? FontWeight.bold : FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
