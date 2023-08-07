import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolioflutter/Models/header_items.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/globals.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

List<HeaderItems> headerItems = [
  HeaderItems(title: "HOME", ontap: () {}, isButton: false, id: 'header'),
  HeaderItems(title: "MY INTRO", ontap: () {}, isButton: false, id: 'myintro'),
  HeaderItems(title: "JOURNEY", ontap: () {}, isButton: false, id: 'journey'),
  HeaderItems(
      title: "EXPERIENCE", ontap: () {}, isButton: false, id: 'experience'),
  HeaderItems(title: "PROJECTS", ontap: () {}, isButton: false, id: 'project'),
  HeaderItems(title: "SKILLS", ontap: () {}, isButton: false, id: 'skill'),
  HeaderItems(
      title: "EDUCATION", ontap: () {}, isButton: false, id: 'education'),
  HeaderItems(title: "CONTACT", ontap: () {}, isButton: false, id: 'contact'),
];

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () {},
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "PORTFOLIO",
                  style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold))
            ]))),
      ),
    );
  }
}

class HeaderItemsTabs extends StatelessWidget {
  HeaderItemsTabs({super.key, required this.scroll});
  final ScrollToId scroll;
  @override
  Widget build(BuildContext context) {
    ScrollToId scrollToId =
        ScrollToId(scrollController: Globals.scrollController);
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [Condition.largerThan(name: MOBILE)],
      child: Row(
        children: headerItems
            .map((e) => e.isButton
                ? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                          color: kDangerColor,
                          borderRadius: BorderRadius.circular(8.0)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2.0, vertical: 5.0),
                      child: TextButton(
                        onPressed: e.ontap,
                        child: Text(
                          e.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                  )
                : MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      margin: const EdgeInsets.only(right: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          scroll.jumpTo(e.id);
                          print("ontap");
                        },
                        child: Text(
                          e.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ))
            .toList(),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key, required this.scrollToId});

  final ScrollToId scrollToId;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
          desktop: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: buildHeader(scrollToId),
          ),
          mobile: buildMobileHeader(),
          tablet: buildHeader(scrollToId)),
    );
    //   return buildHeader();
  }

  Widget buildMobileHeader() {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        HeaderLogo(),
        GestureDetector(
          onTap: () {
            Globals.scafoldKey.currentState!.openEndDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 28.0,
          ),
        )
      ]),
    ));
  }

  Widget buildHeader(ScrollToId scroll) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [HeaderLogo(), HeaderItemsTabs(scroll: scroll)],
      ),
    );
  }
}
