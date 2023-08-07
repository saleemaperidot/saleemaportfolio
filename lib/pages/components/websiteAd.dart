import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteAd extends StatelessWidget {
  const WebsiteAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUI(1000.0),
        tablet: _buildUI(760),
        mobile: _buildUI(MediaQuery.of(context).size.width * 0.8),
      ),
    );
  }

  Widget _buildUI(double width) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Flex(
            direction:
                constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
            children: [
              Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FACEBOOK",
                        style: GoogleFonts.oswald(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "UI CLONED",
                        style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Facebook social media application  recreated app is better work in mobile view.Login page of facebook app is recreated .",
                        style: TextStyle(
                            color: KcaptionColor, height: 1.5, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 48.0,
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: TextButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      "https://github.com/saleemaperidot/flutterProjects"));
                                },
                                child: Center(
                                  child: Text(
                                    "DETAILS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: kPrimaryColor,
                                ),
                              ),
                              height: 48.0,
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "NEXT APP",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                width: 25,
              ),
              Expanded(
                flex: constraints.maxWidth > 720 ? 1 : 0,
                child: Image(
                  width: constraints.maxWidth > 720 ? null : 350,
                  image: AssetImage(
                    "assets/facedbook.png",
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
