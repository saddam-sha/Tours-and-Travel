import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 73, 26, 86),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.purple),
            ),
            Image.asset("assets/Singup/12.png"),
            Positioned(
              top: 40,
              left: 48,
              child: Container(
                // alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(fontSize: 34, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: 160,
                            child: Image.asset("assets/Singup/Oval.png")),
                        Positioned(
                          left: 20,
                          top: 30,
                          child: SizedBox(
                            height: screenHeight * 0.10,
                            child: Image.asset(
                                "assets/Singup/mobileme-logo-of-black-cloud.png"),
                          ),
                        ),
                        const Positioned(
                            left: 45,
                            top: 115,
                            child: Text(
                              "Add Photo",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 105, 18, 121),
                                  fontWeight: FontWeight.w500),
                            )),
                        Positioned(
                          top: 55,
                          left: 60,
                          child: SizedBox(
                              height: screenHeight * 0.05,
                              child:
                                  Image.asset("assets/Singup/down-arrow.png")),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Positioned(
                      child: Container(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              label: const Center(
                                child: Text(
                                  "Username",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 170, 40, 193)),
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            label: const Center(
                              child: Text("Password",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 170, 40, 193))),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            label: const Center(
                              child: Text("Email",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 170, 40, 193))),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            label: const Center(
                              child: Text("Phone",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 170, 40, 193))),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            label: const Center(
                              child: Text("OK, I'm Ready",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 170, 40, 193),
                                      fontSize: 20)),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "Help",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 26,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
