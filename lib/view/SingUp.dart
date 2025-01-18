import 'package:flutter/material.dart';
import 'package:tour_and_travals1/view/login.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Login()));
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          width: double.infinity,
          height: 55,
          child: const Text(
            "Already Signup ?",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.purple,
            image: DecorationImage(
              image: AssetImage("assets/Login/17.png"),
              fit: BoxFit.fitWidth, // Ensures the image stretches horizontally
              alignment: Alignment.topCenter, // Aligns the image at the top
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 34),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 80,
                    // child: ,
                    backgroundColor: Colors.amber,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.24,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Singup/mobileme-logo-of-black-cloud.png"))),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Singup/down-arrow.png"))),
                            ),
                          ),
                        ),
                        const Text(
                          "Add Photo",
                          style: TextStyle(color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Center(
                            child: Text(
                              "Username",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 20),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Center(
                            child: Text(
                              "Password",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 20),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Center(
                            child: Text(
                              "Email",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 20),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone",
                          label: const Center(
                              child: Text(
                            "Phone",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 20),
                          )),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                          child: Text(
                        "OK, I,m Ready",
                        style: TextStyle(color: Colors.purple, fontSize: 18),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
