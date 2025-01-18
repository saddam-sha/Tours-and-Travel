import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 93, 20, 106),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              maxRadius: 80,
              backgroundImage: AssetImage("assets/Listofplace/slider.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Saddam Shaikh",
              style: TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.black))),
                child: const Text(
                  "Name: Sadddam Shaikh",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.black))),
                child: const Text(
                  "Age:  23",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.black))),
                child: const Text(
                  "Email:Saddamsheikh357@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: Colors.black))),
                child: const Text(
                  "Gender:  Male",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
