import 'package:flutter/animation.dart';

class HeaderItems {
  final String title;
  final VoidCallback ontap;
  final bool isButton;
  final String id;
  HeaderItems(
      {required this.title,
      required this.ontap,
      required this.isButton,
      required this.id});
}
