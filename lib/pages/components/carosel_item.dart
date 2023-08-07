import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/Models/carosel_item.dart';
import 'package:portfolioflutter/utilits/constants.dart';

List<CaroselItemModel> caroselItemModel = [
  CaroselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "MOBILE APPLICATION DEVELOPER",
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SALEEMA NP",
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "flutter developer,based on India",
            style: GoogleFonts.oswald(
                color: KcaptionColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              child: Wrap(
            children: [
              const Text(
                "Need a custom Website?",
                style: TextStyle(
                    color: KcaptionColor, fontSize: 15.0, height: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Got a project lets talk",
                    style: TextStyle(
                        height: 1.5, color: Colors.white, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextButton(
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 1, 1),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset('assets/saleemaAvatarbg.png'),
    ),
  ),

  //2nd
  CaroselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FLUTTER DEVELOPER",
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SALEEMA NP",
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "flutter developer,based on India",
            style: GoogleFonts.oswald(
                color: KcaptionColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              child: Wrap(
            children: [
              const Text(
                "Need a custom mobile App?",
                style: TextStyle(
                    color: KcaptionColor, fontSize: 15.0, height: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Got a project lets talk",
                    style: TextStyle(
                        height: 1.5, color: Colors.white, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextButton(
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 1, 1),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset('assets/saleemaAvatarbg.png'),
    ),
  ),

  //3rd
  CaroselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FRONT END DEVELOPER",
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SALEEMA NP",
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "front end developer,based on India",
            style: GoogleFonts.oswald(
                color: KcaptionColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              child: Wrap(
            children: [
              const Text(
                "Need a custom Website?",
                style: TextStyle(
                    color: KcaptionColor, fontSize: 15.0, height: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Got a project lets talk",
                    style: TextStyle(
                        height: 1.5, color: Colors.white, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextButton(
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 1, 1),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset('assets/saleemaAvatarbg.png'),
    ),
  ),

  //4th
  CaroselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "MENTOR",
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SALEEMA NP",
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "MENTOR,based on India",
            style: GoogleFonts.oswald(
                color: KcaptionColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              child: Wrap(
            children: [
              const Text(
                "Intrested in Technology?",
                style: TextStyle(
                    color: KcaptionColor, fontSize: 15.0, height: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Got a project lets talk",
                    style: TextStyle(
                        height: 1.5, color: Colors.white, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextButton(
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 1, 1),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset('assets/saleemaAvatarbg.png'),
    ),
  ),
  //5th
  CaroselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "LEARNER",
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "SALEEMA NP",
            style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Being s developer is continous learning and problem solving",
            style: GoogleFonts.oswald(
                color: KcaptionColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
              child: Wrap(
            children: [
              const Text(
                "Need a custom Website?",
                style: TextStyle(
                    color: KcaptionColor, fontSize: 15.0, height: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Got a project lets talk",
                    style: TextStyle(
                        height: 1.5, color: Colors.white, fontSize: 15.0),
                  ),
                ),
              )
            ],
          )),
          const SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextButton(
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 1, 1),
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset('assets/saleemaAvatarbg.png'),
    ),
  ),
];
