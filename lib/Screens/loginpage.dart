import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://tse1.mm.bing.net/th?id=OIP.Vvo76rVbUUOaJuqr87HemwHaHa&pid=Api&P=0',
                fit: BoxFit.fitWidth,
                height: 50,
                width: 50,
                filterQuality: FilterQuality.high,
              ),
              Container(
                child: const Text(
                  "Log in to your account",
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Text(
                  "Welcome back! Please enter your details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Container(
                    alignment: const Alignment(-0.9, 0),
                    child: const Text(
                      "Email Id",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 10,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter Your Email",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: const Alignment(-0.9, 0),
                    child: const Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText:
                            "password                                                                       👁️",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 390,
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      child: const Text("Forgot password?"),
                      onTap: () {
                        Navigator.of(context).pushNamed("forgot_password_page");
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(360, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("intro_page");
                  },
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(360, 10),
                    side: const BorderSide(width: 1, color: Colors.blue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://tse2.mm.bing.net/th?id=OIP.HG6XtzIxf4Nbo_vZt8T3EAHaHa&pid=Api&P=0',
                        fit: BoxFit.fitWidth,
                        height: 30,
                        width: 30,
                        filterQuality: FilterQuality.high,
                      ),
                      const Text(
                        " Sign in with google",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account yet?",
                  ),
                  GestureDetector(
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("create_account_page");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
