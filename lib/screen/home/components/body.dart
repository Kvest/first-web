import 'package:first_web/screen/home/components/home_content_desktop.dart';
import 'package:first_web/screen/home/components/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
      ),
    );
  }
}
