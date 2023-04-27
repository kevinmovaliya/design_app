import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      Container(
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Container(
                padding: const EdgeInsets.all(12),
                child: Image.network(
                  "https://tse1.mm.bing.net/th?id=OIP.Vvo76rVbUUOaJuqr87HemwHaHa&pid=Api&P=0",
                  //color: Colors.blue,
                ),
              ),
              actions: [
                Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  child: Row(
                    children: const [
                      Text(
                        "Go Premium",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "💎",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 170,
            ),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Status :",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Secure",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/vpnon.png",
                      height: 200,
                      width: 200,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("home_page1");
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Current location",
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 350,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/canada.jpeg",
                          height: 80,
                          width: 80,
                        ),
                        const Text(
                          "Canada",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          "assets/images/star.jpg",
                          height: 30,
                          width: 30,
                        ),
                        Image.asset(
                          "assets/images/network.png",
                          height: 30,
                          width: 30,
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed("select_location_page");
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const Center(
        child: Text("hii"),
      ),
      const Center(
        child: Text("Hello"),
      ),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading: Container(
      //     padding: const EdgeInsets.all(12),
      //     child: Image.network(
      //       "https://tse1.mm.bing.net/th?id=OIP.Vvo76rVbUUOaJuqr87HemwHaHa&pid=Api&P=0",
      //       //color: Colors.blue,
      //     ),
      //   ),
      //   actions: [
      //     Container(
      //       padding: const EdgeInsets.all(15),
      //       alignment: Alignment.center,
      //       child: Row(
      //         children: const [
      //           Text(
      //             "Go Premium",
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 25,
      //             ),
      //           ),
      //           SizedBox(
      //             width: 10,
      //           ),
      //           Text(
      //             "💎",
      //             style: TextStyle(
      //               color: Colors.yellow,
      //               fontSize: 25,
      //             ),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
