import 'package:first_web/screen/home/components/app_bar.dart';
import 'package:first_web/screen/home/components/body.dart';
import 'package:first_web/screen/home/components/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType != DeviceScreenType.desktop
            ? NavigationDrawer()
            : null,
        body: Container(
          height: size.height,
          // it will take full width
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BurgerAppBar(),
              Spacer(),
              // It will cover 1/3 of free spaces
              Body(),
              Spacer(
                flex: 2,
              ),
              // it will cover 2/3 of free spaces
            ],
          ),
        ),
      ),
    );
  }
}