import 'package:first_web/screen/home/components/call_to_action.dart';
import 'package:first_web/screen/home/components/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction('Join Course'),
      ],
    );
  }
}