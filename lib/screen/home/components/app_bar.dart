import 'package:first_web/screen/home/components/app_bar_mobile.dart';
import 'package:first_web/screen/home/components/app_bar_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BurgerAppBar extends StatelessWidget {
  const BurgerAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileAppBar(),
      tablet: MobileAppBar(),
      desktop: TabletDesktopAppBar(),
    );
  }
}