import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class Globals {
  static final scrollController = ScrollController();
  static GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  static ScrollToId scrollToId = ScrollToId(scrollController: scrollController);
}
