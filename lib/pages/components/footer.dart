import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/footer_item.dart';
import 'package:portfolioflutter/utilits/constants.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

List<FooterItem> footer_item = [
  FooterItem(
    iconPath: "",
    title: "ADDRESS",
    subtitle1: "kerala,India",
    subtitle2: "Pattambi",
  ),
  FooterItem(
    iconPath: "",
    title: "EMAIL",
    subtitle1: "saleemaperidot@gmial.com",
    subtitle2: "Pattambi",
  ),
  FooterItem(
    iconPath: "",
    title: "PHONE",
    subtitle1: "9633784925",
    subtitle2: "https://wa.me/9633784925",
  ),
  FooterItem(
    iconPath: "",
    title: "SOCIAL",
    subtitle1: "https://www.linkedin.com/in/saleemamanas/",
    subtitle2: "https://www.facebook.com/saleema.peridot",
  ),
];

class Footer extends StatelessWidget {
  const Footer({super.key});

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
  final Uri _url = Uri.parse('https://flutter.dev');
  return LayoutBuilder(builder: (context, constraints) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "CONTACT",
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: footer_item
                .map((e) => Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: ScreenHelper.isMobile(context)
                          ? constraints.maxWidth / 2.0 - 20.0
                          : constraints.maxWidth / 4.0 - 20.0,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Image.asset(
                                //   "",
                                //   width: 25.0,
                                // ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  e.title,
                                  style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextButton(
                              onPressed: () {
                                _launchUri(e.subtitle1);
                              },
                              child: Text(
                                e.subtitle1,
                                style: TextStyle(
                                  color: KcaptionColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                _launchUri(e.subtitle2);
                              },
                              child: Text(
                                e.subtitle2,
                                style: TextStyle(
                                  color: KcaptionColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  });
}

Future<void> _launchUri(String url) async {
  final _url = url;
  final uri = Uri.parse(_url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
