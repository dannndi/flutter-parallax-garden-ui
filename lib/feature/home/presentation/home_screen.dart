import 'package:flutter/material.dart';
import 'package:paralax_garden_ui/feature/home/presentation/widget/paralax_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double topEleven = 0;
  double topTen = 0;
  double topNine = 0;
  double topEight = 0;
  double topSeven = 0;
  double topSix = 0;
  double topFive = 0;
  double topFour = 0;
  double topThree = 0;
  double topTwo = 0;
  double topOne = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollUpdateNotification) {
            if (notif.scrollDelta == null) return true;
            setState(() {
              topEleven -= notif.scrollDelta! / 2.0;
              topTen -= notif.scrollDelta! / 1.9;
              topNine -= notif.scrollDelta! / 1.8;
              topEight -= notif.scrollDelta! / 1.7;
              topSeven -= notif.scrollDelta! / 1.6;
              topSix -= notif.scrollDelta! / 1.5;
              topFive -= notif.scrollDelta! / 1.4;
              topFour -= notif.scrollDelta! / 1.3;
              topThree -= notif.scrollDelta! / 1.2;
              topTwo -= notif.scrollDelta! / 1.2;
              topOne -= notif.scrollDelta! / 1;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            /// Paralax Background
            ParalaxBackground(
              top: topEleven,
              asset: "assets/top-paralax-11.png",
            ),
            ParalaxBackground(
              top: topTen,
              asset: "assets/top-paralax-10.png",
            ),
            ParalaxBackground(
              top: topNine,
              asset: "assets/top-paralax-9.png",
            ),
            ParalaxBackground(
              top: topEight,
              asset: "assets/top-paralax-8.png",
            ),
            ParalaxBackground(
              top: topSeven,
              asset: "assets/top-paralax-7.png",
            ),
            ParalaxBackground(
              top: topSix,
              asset: "assets/top-paralax-6.png",
            ),
            ParalaxBackground(
              top: topFive,
              asset: "assets/top-paralax-5.png",
            ),
            ParalaxBackground(
              top: topFour,
              asset: "assets/top-paralax-4.png",
            ),
            ParalaxBackground(
              top: topThree,
              asset: "assets/top-paralax-3.png",
            ),
            ParalaxBackground(
              top: topTwo,
              asset: "assets/top-paralax-2.png",
            ),
            ParalaxBackground(
              top: topOne,
              asset: "assets/top-paralax-1.png",
            ),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 350),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff372d3b),
                    alignment: Alignment.center,
                    child: Text(
                      "Paralax Effect",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
