import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/skills.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/globals.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

List<Skill> skills = [
  Skill(skill: "Flutter", percent: 75),
  Skill(skill: "Java", percent: 59),
  Skill(skill: "HTML/css", percent: 70),
  Skill(skill: "javascript", percent: 75),
  Skill(skill: ".NET", percent: 65),
  Skill(skill: "MySQL", percent: 71)
];

class SkillSets extends StatelessWidget {
  const SkillSets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(760),
        mobile: _buildUi(MediaQuery.of(context).size.width * 0.8),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 2,
                  child: Image.asset(
                    "assets/saleemaAvatarbg.png",
                    width: 200.0,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                    flex: ScreenHelper.isMobile(context) ? 0 : 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SKILLS",
                          style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 28.0,
                              height: 1.3),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "this details will be added by time beieng.this is the only content in my head works",
                          style: TextStyle(
                              color: KcaptionColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.0,
                              height: 1),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Column(
                          children: skills
                              .map((e) => Container(
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: e.percent,
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            alignment: Alignment.centerLeft,
                                            height: 38.0,
                                            child: Text(e.skill),
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          flex: 100 - e.percent,
                                          child: Divider(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "${e.percent}%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ))
                              .toList(),
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
