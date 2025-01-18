import 'package:flutter/material.dart';
import 'package:tour_and_travals1/model/dastination.dart';
import 'package:tour_and_travals1/view/day1.dart';

class Details extends StatelessWidget {
  final Dastinationmodel dasdetail;
  const Details({required this.dasdetail, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.grey,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                  child: Image.asset("assets/tripdetails/heart.png")),
            ),
            Text(
              "Like ${dasdetail.like}",
              style: const TextStyle(
                  color: Color.fromARGB(255, 109, 29, 123),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
                child: Image.asset("assets/tripdetails/chat.png")),
            Text(
              "Like ${dasdetail.like}",
              style: const TextStyle(
                  color: Color.fromARGB(255, 109, 29, 123),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.03,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "POST COMMENTS",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          dasdetail.place,
          style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              fontSize: 32),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.6,
            width: double.infinity,
            child: Image.asset(
              dasdetail.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            color: Colors.purple,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 10),
                  child: Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: Image.asset("assets/tripdetails/day.png")),
                      Text(
                        dasdetail.days,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Container(
                  color: Colors.yellow,
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child:
                              Image.asset("assets/tripdetails/telephone.png")),
                      const Text(
                        "Contect Us",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.purple,
            height: MediaQuery.of(context).size.height * 0.08,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  color: const Color.fromARGB(255, 111, 32, 125),
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: const Center(
                    child: Text(
                      "Overview",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  color: const Color.fromARGB(255, 231, 214, 63),
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: const Center(
                    child: Text(
                      "Details",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  width: MediaQuery.of(context).size.width * 0.005,
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  color: const Color.fromARGB(255, 231, 214, 63),
                  width: MediaQuery.of(context).size.width * 0.33,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: const Center(
                    child: Text(
                      "Incusions",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DayOne(
                            dasrination: dasdetail,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/tripdetails/locationline1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
