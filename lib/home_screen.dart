import 'package:app_landing_page/utils/responsive.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:app_landing_page/sections/top_section/top_section.dart';

import 'controllers/MenuController.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());

    return Scaffold(
      key: _controller.scaffoldkey,
      body: Responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
            ],
          ),
        ),
        tablet: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
            ],
          ),
        ),
        desktop: SingleChildScrollView(
          child: Column(
            children: [
              TopSection(),
            ],
          ),
        ),
      ),
    );
  }
}
