import 'package:flutter/material.dart';
import 'package:tour_and_travals1/model/dastination.dart';
import 'package:tour_and_travals1/view/details.dart';
import 'package:tour_and_travals1/view/profil.dart';

class Dastination extends StatefulWidget {
  const Dastination({super.key});

  @override
  State<Dastination> createState() => _DastinationState();
}

class _DastinationState extends State<Dastination> {
  List<Dastinationmodel> dastination = [
    Dastinationmodel(
        // assets/Listofplace/statue-of-liberty-1-59e6452faf5d3a00105f364a.png
        image: "assets/Listofplace/slider.png",
        countries: "Taj Mahal,India",
        like: "22",
        place: "India",
        dayone: "Marin Dreive",
        days: "5D | 4N"),
    Dastinationmodel(
        image:
            "assets/Listofplace/statue-of-liberty-1-59e6452faf5d3a00105f364a.png",
        countries: "Beach , Thailand",
        like: "18",
        place: "Thailand",
        dayone: "Pattaya, Phuket",
        days: "4D | 3N"),
    Dastinationmodel(
        image: "assets/Listofplace/petronas-twin-towers.png",
        countries: "Twin Tower,Kaula ",
        like: "23",
        place: "Kaula",
        dayone: "Rishikesh",
        days: "6D | 5N"),
    Dastinationmodel(
        image: "assets/Listofplace/hqdefault.png",
        countries: "Aquarium, Dubai",
        like: "21",
        place: "Dubai",
        dayone: "Burj Khalifa",
        days: "7D | 6N"),
    Dastinationmodel(
        image: "assets/Listofplace/Glacier Bay National Park-03.png",
        countries: "Glaciers, Alaska",
        like: "10",
        place: "Alaska",
        dayone: "Kenai Fjords",
        days: "3D | 1N"),
    Dastinationmodel(
        image:
            "assets/Listofplace/d3bf18d249bf6d57dc08813b54a137e3c3b2644a_interlaken-switzerland-031 copy.png",
        countries: "Forest ,Switzeland",
        like: "21",
        place: "Switzeland",
        dayone: "Fotest View",
        days: "1D | 1N"),
    Dastinationmodel(
        image: "assets/Listofplace/london-441853_1920-1200x796-1200x796.png",
        countries: "Bridge,Londan",
        like: "21",
        place: "Landan",
        dayone: "Landan Bridge",
        days: "8D | 7N"),
    Dastinationmodel(
        image: "assets/Listofplace/106853222.png",
        countries: "Forest ,Africa",
        like: "25",
        place: "Africa",
        dayone: "Forest View",
        days: "5D | 5N"),
    Dastinationmodel(
        image: "assets/Listofplace/18579-istock-666393322.png",
        countries: "Australia,Brisbane",
        like: "21",
        place: "Australia",
        dayone: "Brisbane",
        days: "5D | 6N"),
    Dastinationmodel(
        image: "assets/Listofplace/us.jpg",
        countries: "Us,Amusement park",
        like: "45",
        place: "Us",
        dayone: "Amusement park",
        days: "10D | 9N"),
    Dastinationmodel(
        image: "assets/Listofplace/omanp.jpg",
        countries: "oman,Muscat",
        like: "66",
        place: "oman",
        dayone: "Muscat",
        days: "7D | 6N"),
    Dastinationmodel(
        image: "assets/Listofplace/japan.png",
        countries: "Japan,Okinawa",
        like: "50",
        place: "Japan",
        dayone: "Okinawa",
        days: "10D | 9N"),
    Dastinationmodel(
        image: "assets/Listofplace/yemen.png",
        countries: "Yemen, Mukalla",
        like: "21",
        place: "Yemen",
        dayone: "AlRayyan Beach",
        days: "10D | 9N"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.purple,
              height: MediaQuery.of(context).size.height / 2.8,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage:
                          AssetImage("assets/Listofplace/slider.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Saddam shikh",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Location: Byculla",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profil()));
              },
              child: const ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_back),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "DESTINATIONS",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.5),
          itemCount: dastination.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Details(dasdetail: dastination[i])));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.height * 0.25,
                      height: MediaQuery.of(context).size.width * 0.25,
                      decoration: const BoxDecoration(
                          border: BorderDirectional(
                              start: BorderSide(color: Colors.purple))),
                      child: Image.asset(
                        dastination[i].image,
                        fit: BoxFit.cover,
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          dastination[i].countries,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.height * 0.04,
                            height: MediaQuery.of(context).size.width * 0.04,
                            child: Image.asset("assets/tripdetails/heart.png")),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.height * 0.03,
                            height: MediaQuery.of(context).size.width * 0.04,
                            child: Text(
                              dastination[i].like,
                              style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
