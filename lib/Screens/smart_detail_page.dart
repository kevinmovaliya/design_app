import 'package:flutter/material.dart';

class SmartDetailPage extends StatefulWidget {
  const SmartDetailPage({Key? key}) : super(key: key);

  @override
  State<SmartDetailPage> createState() => _SmartDetailPageState();
}

class _SmartDetailPageState extends State<SmartDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Smart detail 🔆",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 55, top: 30),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "My subscription",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "1 Month",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text("Upgrade")
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 395,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 46, top: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Expire On:",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "27-Jan-2024",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 177,
                    ),
                    GestureDetector(
                      child: const Text(
                        "Extend",
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("select_plan_page");
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 395,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 48, top: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "User ID:",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "26515",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 395,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 48, top: 0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "My IP:",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "26.515.851.2",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              color: Colors.white,
              width: 395,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 48, top: 0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Row(
                            children: [
                              const Text(
                                "Current Location:",
                                style: TextStyle(fontSize: 18),
                              ),
                              const Text(
                                "Canada",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              Image.asset(
                                "assets/images/canada.jpeg",
                                height: 35,
                                width: 30,
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("search_location_page");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
