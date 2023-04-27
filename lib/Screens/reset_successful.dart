import 'package:flutter/material.dart';

class ResetSuccessfulPage extends StatefulWidget {
  const ResetSuccessfulPage({Key? key}) : super(key: key);

  @override
  State<ResetSuccessfulPage> createState() => _ResetSuccessfulPageState();
}

class _ResetSuccessfulPageState extends State<ResetSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("check_email_page");
          },
        ),
        title: const Text(
          "Reset successful",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/reset.jpg",
              height: 250,
              width: 400,
            ),
            const Text("You can now log in to your account"),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(360, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Login Now     ➡",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
