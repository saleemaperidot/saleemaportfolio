import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHelper extends StatelessWidget {
  const ScreenHelper(
      {required this.desktop,
      required this.mobile,
      required this.tablet,
      super.key});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800.0;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800.0 &&
      MediaQuery.of(context).size.width < 1200.0;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200.0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints contrains) {
      if (contrains.maxWidth >= 1200) {
        return desktop;
      } else if (contrains.maxWidth >= 800 && contrains.maxWidth < 1200) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
