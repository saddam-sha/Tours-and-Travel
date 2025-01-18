import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour_and_travals1/view/SingUp.dart';
import 'package:tour_and_travals1/view/dashbord.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  // void Loginuser() async {
  //   try {
  //     var response = await http.post(
  //         Uri.parse("https://myntra-apis.onrender.com/v1/users/login"),
  //         body: {
  //           "email": emailcontroller.text,
  //           "password": passwordcontroller.text
  //         });
  //     if (response.statusCode == 200) {
  //       var getResponse = jsonDecode(response.body);
  //       writedata();
  //       Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => const Dashbord()));

  //       setState(() {});
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  void writedata() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("email", emailcontroller.text);
    pref.setString("password", passwordcontroller.text);

    setState(() {});
  }

  void getdata() async {
    final pref = await SharedPreferences.getInstance();
    emailcontroller.text = pref.getString("email") ?? "";
    passwordcontroller.text = pref.getString("password") ?? "";
    if (emailcontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Dashbord()));
      setState(() {});
    }
  }

  @override
  void initState() {
    getdata();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "New user?",
                style: TextStyle(color: Colors.purple, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Singup()));
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 105, 24, 119),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 57, 12, 65),
          ),
          Image.asset("assets/Login/17.png"),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  "Tour App",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Image.asset("assets/Login/If you have an exist.png"),
              ),
              SizedBox(
                height: screenHeight * 0.20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      children: [
                        TextField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              label: const Center(
                                  child: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
                              )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              label: const Center(
                                  child: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.purple),
                              )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(28))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (emailcontroller.text == "saddam@gmail.com" &&
                                passwordcontroller.text == "123456") {
                              writedata();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Dashbord()));
                            } else {
                              passwordcontroller.clear();
                              emailcontroller.clear();
                            }
                            setState(() {});
                          },
                          child: Container(
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(28)),
                              child: const Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.purple),
                              ))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Forget your password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
