import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolioflutter/pages/components/carosel_item.dart';
import 'package:portfolioflutter/utilits/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double carauselHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);

    return Container(
      height: carauselHeight,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              items: List.generate(
                  5,
                  (index) => Builder(
                        builder: (BuildContext context) {
                          return Container(
                            child: ScreenHelper(
                              desktop: _buildDesktop(
                                  context,
                                  caroselItemModel[index].text,
                                  caroselItemModel[index].image),
                              mobile: _buildMobile(
                                  context,
                                  caroselItemModel[index].text,
                                  caroselItemModel[index].image),
                              tablet: _buildTablet(
                                  context,
                                  caroselItemModel[index].text,
                                  caroselItemModel[index].image),
                            ),
                            constraints:
                                BoxConstraints(minHeight: carauselHeight),
                          );
                        },
                      )).toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                scrollPhysics: NeverScrollableScrollPhysics(),
                height: carauselHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//big screen
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
        maxWidth: 1000,
        minWidth: 1000,
        defaultScale: false,
        child: Row(
          children: [Expanded(child: text), Expanded(child: image)],
        )),
  );
}

//big tablet
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
        maxWidth: 800,
        minWidth: 800,
        defaultScale: false,
        child: Row(
          children: [Expanded(child: text), Expanded(child: image)],
        )),
  );
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints:
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 200, child: image),
        SizedBox(
          height: 30,
        ),
        text
      ],
    ),
  );
}
