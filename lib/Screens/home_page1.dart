import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int currentIndex = 0;
  bool light = true;
  bool light1 = true;

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
                        "Not Secure",
                        style: TextStyle(
                          color: Colors.red,
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
                      "assets/images/vpn.png",
                      height: 200,
                      width: 200,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("home_page2");
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
      Container(
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.white,
              title: const Text(
                "Setting",
                style: TextStyle(color: Colors.black),
              ),
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pushNamed("home_page1");
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.attachment,
                    color: Colors.blue,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Kill Switch",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Switch(
                    value: light,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.swap_horizontal_circle_sharp,
                    color: Colors.blue,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Auto Connect",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "when app start",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Switch(
                    value: light1,
                    onChanged: (bool value) {
                      setState(() {
                        light1 = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.vertical_split_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Split tunneling",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.brightness_high_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Smart detail",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.of(context).pushNamed("smart_detail_page");
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(360, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.logout_outlined),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/");
                      },
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/");
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.chat_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Help & Support",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.telegram_sharp,
                    color: Colors.blue,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Join Telegram",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const Center(
        child: Text("Hello"),
      ),
    ];
    return Scaffold(
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
