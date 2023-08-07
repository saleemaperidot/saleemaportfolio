import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/design_process_Model.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

final List<DesignProcessModel> designProcessModel = [
  DesignProcessModel(
      tittle: "APPs",
      imagePath: "",
      subtittle:
          "Application development using flutter and android java.Used visual studio code and Android studio for development"),
  DesignProcessModel(
      tittle: "MENTOR",
      imagePath: "",
      subtittle:
          "Helping techies to upskill thier knowlwdge in web and mobile application .query languages:Sql sever,Mysql "),
  DesignProcessModel(
      tittle: "WEBSITES",
      imagePath: "",
      subtittle:
          "Using HTML, CSS,Javascript to develop font end application.Severside scripting languages such as .NET,java is familar."),
  DesignProcessModel(
      tittle: "LEARNER",
      imagePath: "",
      subtittle:
          "Ethusiast to learn emerging technologies is one of my favoriate checklist")
];

class CvSection extends StatelessWidget {
  const CvSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        tablet: _buildUi(context, 760),
        desktop: _buildUi(context, 1000),
        mobile: _buildUi(context, MediaQuery.of(context).size.width * 0.8),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "CODE ,DEVELOP  AND LEARN",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.8,
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    _LaunchUI();
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "DOWNLOAD CV",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          height: 1.8,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: LayoutBuilder(builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0.0),
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: ScreenHelper.isMobile(context) ||
                            ScreenHelper.isTablet(context)
                        ? constraints.maxWidth / 2
                        : 250,
                    childAspectRatio: ScreenHelper.isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemBuilder: ((context, index) {
                    return Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Image.asset(
                              //   designProcessModel[index].imagePath,
                              //   width: 40.0,
                              // ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                designProcessModel[index].tittle,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            designProcessModel[index].subtittle,
                            style: const TextStyle(
                              color: Colors.grey,
                              height: 1.5,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  itemCount: 4,
                );
              }),
            )
          ],
        ));
  }
}

Future<void> _LaunchUI() async {
  final uri = Uri.parse(
      "https://drive.google.com/file/d/1theFRTkJtHQn-smT87KThSOavGHK3dkF/view");
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch';
  }
}
