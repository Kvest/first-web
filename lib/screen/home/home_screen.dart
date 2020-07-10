import 'package:first_web/screen/home/components/app_bar.dart';
import 'package:first_web/screen/home/components/body.dart';
import 'package:first_web/screen/home/components/centered_view.dart';
import 'package:first_web/screen/home/components/home_content_desktop.dart';
import 'package:first_web/screen/home/components/home_content_mobile.dart';
import 'package:first_web/screen/home/components/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        drawer: sizingInformation.deviceScreenType != DeviceScreenType.desktop
            ? NavigationDrawer()
            : null,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              BurgerAppBar(),
              Body()
            ],
          ),
        ),
      ),
    );
  }
}