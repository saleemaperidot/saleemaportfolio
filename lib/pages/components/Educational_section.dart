import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/eduction.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<Education> education = [
  Education(
      discription: "Masters in Computer science and engineering",
      linkName: "MGM College of Engineering and pharmaceiutical",
      period: "2019-2021"),
  Education(
      discription:
          "Attended workshop at academy.bigbinary.com is a self paced learning methodology",
      linkName: "accademy.bigbinary.com",
      period: "2018-2019"),
  Education(
      discription: "B.tech in computer science and engineering",
      linkName: "MEA colege of Engineering",
      period: "2010-2014"),
];

class EducationalSection extends StatelessWidget {
  const EducationalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUI(1000.0),
        tablet: _buildUI(750),
        mobile: _buildUI(MediaQuery.of(context).size.width * 0.8),
      ),
    );
  }

  Widget _buildUI(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "EDUCATION",
                style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    height: 1.3),
              ),
              SizedBox(
                height: 5.0,
              ),
              Wrap(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 350.0),
                    child: Text(
                      "Masters in computer science engineering passionate about mobile and web application development",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              LayoutBuilder(builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 2.0,
                    runSpacing: 2.0,
                    children: education
                        .map((e) => Container(
                              width: constraints.maxWidth / 2.0 - 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.period,
                                    style: GoogleFonts.oswald(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    e.discription,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.oswald(
                                      color: KcaptionColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    e.linkName,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                );
              }),
            ],
          )),
    );
  }
}
