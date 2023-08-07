import 'package:flutter/material.dart';
import 'package:portfolioflutter/pages/components/Educational_section.dart';
import 'package:portfolioflutter/pages/components/Experience.dart';
import 'package:portfolioflutter/pages/components/carosel.dart';
import 'package:portfolioflutter/pages/components/cvSection.dart';
import 'package:portfolioflutter/pages/components/footer.dart';

import 'package:portfolioflutter/pages/components/header.dart';
import 'package:portfolioflutter/pages/components/netflixAppAd.dart';
import 'package:portfolioflutter/pages/components/portfolio_status.dart';
import 'package:portfolioflutter/pages/components/skill_sets.dart';
import 'package:portfolioflutter/pages/components/websiteAd.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/globals.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollToId scrollToId =
        ScrollToId(scrollController: Globals.scrollController);
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Header(scrollToId: scrollToId)),
        key: Globals.scafoldKey,
        endDrawer: Drawer(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kDangerColor,
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                              onPressed: () {
                                scrollToId.jumpTo(headerItems[index].id);
                              },
                              child: Text(
                                headerItems[index].title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    : ListTile(
                        onTap: () {
                          scrollToId.jumpTo(headerItems[index].id);
                          //   setState(() {
                          //     autoScrollController.scrollToIndex(index,
                          //         preferPosition: AutoScrollPosition.begin);
                          //   });
                        },
                        title: Text(
                          headerItems[index].title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
              }),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: headerItems.length,
            ),
          )),
        ),
        body: Container(
          child: InteractiveScrollViewer(
            scrollToId: scrollToId,
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            children: <ScrollContent>[
              ScrollContent(
                  id: headerItems[0].id,
                  child: SizedBox(
                    height: 0,
                  )),
              // ScrollContent(
              //   id: headerItems[0].id,
              //   child: Container(
              //     child: const Header(),
              //   ),
              // ),
              ScrollContent(id: headerItems[1].id, child: Carousel()),
              ScrollContent(
                id: "a",
                child: const SizedBox(
                  height: 20,
                ),
              ),
              ScrollContent(
                  id: headerItems[2].id,
                  child: Center(child: const CvSection())),

              ScrollContent(
                  id: headerItems[3].id, child: Center(child: Experience())),
              ScrollContent(id: headerItems[4].id, child: NetflixAppAdd()),
              ScrollContent(
                id: "b",
                child: SizedBox(
                  height: 70,
                ),
              ),
              ScrollContent(id: "h", child: WebsiteAd()),
              ScrollContent(
                id: 'c',
                child: SizedBox(
                  height: 100,
                ),
              ),
              // Padding(
              //     padding: EdgeInsets.symmetric(vertical: 28.0),
              //     child: PortfolioStatus()),

              ScrollContent(id: headerItems[6].id, child: EducationalSection()),
              ScrollContent(
                id: 'd',
                child: SizedBox(
                  height: 100.0,
                ),
              ),
              ScrollContent(id: headerItems[5].id, child: SkillSets()),
              ScrollContent(
                id: 'e',
                child: SizedBox(
                  height: 80,
                ),
              ),
              ScrollContent(
                  id: headerItems[7].id, child: Center(child: Footer())),
            ],
          ),
        ));
  }
}
