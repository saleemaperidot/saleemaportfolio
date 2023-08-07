import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/statusModel.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<Status> staus = [
  Status(count: "40", text: "CLIENTS"),
  Status(count: "10", text: "PROJECTS"),
  Status(count: "30", text: "AWARDS"),
  Status(count: "4+", text: "EXPIRIENCE"),
];

class PortfolioStatus extends StatelessWidget {
  const PortfolioStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUI(1000.0, context),
        tablet: _buildUI(760, context),
        mobile: _buildUI(MediaQuery.of(context).size.width * 0.8, context),
      ),
    );
  }

  Widget _buildUI(double width, BuildContextcontext) {
    return Container(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: staus.map((e) {
                int index = staus.indexOf(e);
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 28.0),
                  width: ScreenHelper.isMobile(context)
                      ? constrains.maxWidth / 2.0 - 20
                      : (constrains.maxWidth / 4.0 - 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(staus[index].count,
                          style: GoogleFonts.oswald(
                              fontWeight: FontWeight.w700,
                              fontSize: 32.0,
                              color: Colors.white)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        staus[index].text,
                        style: TextStyle(
                            fontSize: 16,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
