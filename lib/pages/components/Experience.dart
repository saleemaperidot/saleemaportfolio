import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/experienceMode.dart';
import 'package:portfolioflutter/utilits/constants.dart';

import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

List<ExperienceModel> experienceModel = [
  ExperienceModel(
      organization: "Freelance Mentor",
      year: "2016-2019",
      rolesNResponsibility:
          "Staying up-to-date with the latest trends,\n technologies, and best practices in the freelance industry to\n provide relevant and timely guidance to freelance professionals."),
  ExperienceModel(
      organization: "Baabte System technologies Pvt Ltd",
      year: "2014-2016",
      rolesNResponsibility:
          "Responsible for providing guidance, support, and \ntechnical expertise to junior developers in the team and helping them\n develop their skills and knowledge in full stack software development.")
];

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
          desktop: _buildUI(1000, context),
          mobile: _buildUI(760, context),
          tablet: _buildUI(MediaQuery.of(context).size.width * 0.8, context)),
    );
  }
}

Widget _buildUI(double width, BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "EXPERIENCE",
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
                  "Proven Mobile App Developer with a Dedication to Quality and User Satisfaction",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
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
                spacing: 5.0,
                runSpacing: 2.0,
                children: experienceModel
                    .map((e) => Container(
                          width: constraints.maxWidth / 2.0 - 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.year,
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                e.organization,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                e.rolesNResponsibility,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            );
          })
        ],
      ),
    ),
  );
}
