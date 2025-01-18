import 'package:flutter/material.dart';
import 'package:tour_and_travals1/model/dastination.dart';

class DayOne extends StatelessWidget {
  final Dastinationmodel dasrination;
  const DayOne({super.key, required this.dasrination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 89, 25, 101),
          height: MediaQuery.of(context).size.height * 0.07,
          child: const Center(
            child: Text(
              "Back",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.135,
            //alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/Day123/wave.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            )),
          ),
          SizedBox(
              width: double.infinity,
              child: Image.asset("assets/Day123/daytime.png")),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Go To ${dasrination.dayone}",
                style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 110, 31, 124),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(dasrination.image), fit: BoxFit.cover)),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.14,
            width: double.infinity,
            color: const Color.fromARGB(255, 92, 37, 102),
            child: Center(
                child: Text(
              dasrination.place,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset("assets/Day123/There are many varia.png"),
            ),
          )
        ],
      ),
    );
  }
}
