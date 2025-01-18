import 'package:flutter/material.dart';
import 'package:tour_and_travals1/model/moretrip.dart';
import 'package:tour_and_travals1/view/dastination.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  List<Moretrip> trips = [
    Moretrip(
        image: "assets/dashbord/thedapperhaus-20181017-0001.png",
        placename: "Paris"),
    Moretrip(
        image: "assets/dashbord/visit_borabora-20181017-0001.png",
        placename: "Bora Bora"),
    Moretrip(
        image: "assets/dashbord/thedapperhaus-20181017-0001.png",
        placename: "Australia"),
    Moretrip(
        image: "assets/dashbord/visit_borabora-20181017-0001.png",
        placename: "Landon"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/dashbord/dasscreen.png"),
                    alignment: Alignment.topCenter),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140, left: 100),
          child: SizedBox(
            height: 100,
            width: 180,
            child: Row(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Image.asset("assets/dashbord/giftbox.png")),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.asset("assets/dashbord/My Packages.png"),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/dashbord/42.png")),
          ),
          child: Image.asset("assets/dashbord/41.png"),
        ),
        Positioned(
          right: 15,
          top: 15,
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              "assets/dashbord/airplane copy.png",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Image.asset(
              "assets/dashbord/Line.png",
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width * 1.15,
          left: 15,
          right: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Dastination()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 150,
                  child: Text(
                    "MORE TRIPS",
                    style: TextStyle(
                        color: Color.fromARGB(255, 105, 24, 119),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trips.length,
                    itemBuilder: (context, index) {
                      final trip = trips[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                decoration: const BoxDecoration(),
                                child: Image.asset(
                                  trip.image,
                                  width: 110,
                                  height: 120,
                                  //fit: BoxFit.cover,
                                )),
                            const SizedBox(height: 8),
                            Text(
                              trip.placename,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   top: MediaQuery.of(context).size.width * 1.15,
        //   left: 10,
        //   child: GestureDetector(
        //     onTap: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => const Dastination()));
        //     },
        // child: SizedBox(
        //     width: 150,
        //     child: Image.asset("assets/dashbord/MORE TRIPS.png")),
        //   ),
        // ),
        // Positioned(
        //   top: 450,
        //   left: 0,
        //   right: 0,
        //   child: SizedBox(
        //     height: 200,
        //     child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: trips.length,
        //       itemBuilder: (context, index) {
        //         final trip = trips[index];
        //         return Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Column(
        //             children: [
        //               Image.asset(trip.image, width: 110, height: 120),
        //               const SizedBox(height: 8),
        //               Text(
        //                 trip.placename,
        //                 style: const TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: double.infinity,
                height: 105,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/dashbord/45.png"),
                        fit: BoxFit.fitWidth)),
                child:
                    Image.asset("assets/dashbord/44.png", fit: BoxFit.fitWidth))
          ],
        )
      ],
    ));
  }
}
