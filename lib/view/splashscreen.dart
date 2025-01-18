import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tour_and_travals1/view/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Image.asset("assets/Logo/Tour And Travel App.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                            height: screenHeight * 0.25,
                            child: Image.asset("assets/Logo/3.png")),
                        Positioned(
                          left: 22,
                          top: 22,
                          child: SizedBox(
                              height: screenHeight * 0.20,
                              child: Image.asset("assets/Logo/2.png")),
                        ),
                        Positioned(
                          left: 38,
                          top: 38,
                          child: SizedBox(
                              height: screenHeight * 0.16,
                              child: Image.asset("assets/Logo/1.png")),
                        ),
                        Positioned(
                          left: 68,
                          top: 68,
                          child: SizedBox(
                              height: screenHeight * 0.08,
                              child: Image.asset("assets/Logo/airplane.png")),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                          width: screenWidth * 0.70,
                          child: Image.asset(
                              "assets/Logo/Travelling decisions.png")),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 210),
                      child: SizedBox(
                        height: screenHeight * 0.32,
                        child: Image.asset(
                            "assets/Logo/927c4907bbd0598c70fb79de7af6a35c-business-building-silhouette-by-vexels.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 100),
                      child: SizedBox(
                        height: screenHeight * 0.32,
                        child: Image.asset(
                            "assets/Logo/3cd6e1dcc6f0fa72d63c4e1ae8d5c2a5--lighthouse-silhouette-campaign-ideascopy.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 260),
                      child: SizedBox(
                        height: screenHeight * 0.32,
                        child: Image.asset(
                            "assets/Logo/kisspng-commercial-building-silhouette-city-silhouette-5ac5eda97c5430.6795764515229208735093.png"),
                      ),
                    ),
                    Image.asset("assets/Logo/5.png"),
                    Image.asset("assets/Logo/4.png"),
                  ],
                )
              ],
            )
          ],
        ));
    //   body: Container(
    //     alignment: Alignment.bottomCenter,
    //     child: Stack(
    //       children: [
    //         Positioned(
    //           bottom: 0,
    //           left: 0,
    //           top: 150,
    //           child: SizedBox(
    //             height: screenHeight * 0.32,
    //             width: MediaQuery.of(context).size.height * 0.18,
    //             child: Image.asset(
    //                 "assets/Logo/927c4907bbd0598c70fb79de7af6a35c-business-building-silhouette-by-vexels.png",
    //                 fit: BoxFit.cover),
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(left: screenWidth * 0.33, right: 30),
    //           child: SizedBox(
    //             height: screenHeight * 0.38,
    //             //width: 300,
    //             child: Image.asset(
    //                 "assets/Logo/3cd6e1dcc6f0fa72d63c4e1ae8d5c2a5--lighthouse-silhouette-campaign-ideascopy.png",
    //                 fit: BoxFit.cover),
    //           ),
    //         ),
    //         Positioned(
    //           bottom: screenHeight * 0.02,
    //           left: screenWidth * 0.65,
    //           child: SizedBox(
    //             height: screenHeight * 0.28,

    //             //width: double.infinity,
    //             child: Image.asset(
    //                 "assets/Logo/kisspng-commercial-building-silhouette-city-silhouette-5ac5eda97c5430.6795764515229208735093.png",
    //                 fit: BoxFit.cover),
    //           ),
    //         ),
    //         Positioned(
    //           bottom: 0,
    //           child: SizedBox(
    //             height: 100,
    //             // width: double.infinity,
    //             child: Image.asset("assets/dashbord/45.png", fit: BoxFit.cover),
    //           ),
    //         ),
    //         Positioned(
    //           bottom: 0,
    //           //left: 2,
    //           child: SizedBox(
    //             height: 100,
    //             //width: double.infinity,
    //             child: Image.asset("assets/dashbord/44.png", fit: BoxFit.cover),
    //           ),
    //         ),
    //         Positioned(
    //           left: 122,
    //           bottom: 190,
    //           child: SizedBox(
    //             height: 200,
    //             width: 200,
    //             child: Image.asset("assets/Logo/3.png"),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 160,
    //           width: 160,
    //           child: Image.asset("assets/Logo/2.png"),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
