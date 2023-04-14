import 'package:dribbble/thirdScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Color _containerColor = Colors.blue;
  Color _containerColor2 = Colors.blue;
  Color _containerColor3 = Colors.blue;
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/shade4.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdScreen()),
                      );
                    },
                    child: Image.asset(
                      "assets/img/line.png",
                      height: 20,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: width * .8,
                  ),
                  CircleAvatar(
                      radius: (20),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/img/girlpho.png"),
                      )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * .1,
                  ),
                  Text(
                    "Discover new places",
                    style: TextStyle(fontSize: 28, fontFamily: "Sail"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _containerColor = _containerColor == Colors.white
                              ? Colors.blue
                              : Colors.white;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          "Suggested",
                          style: TextStyle(fontFamily: "Lobster", fontSize: 14),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                            color: _containerColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _containerColor2 = _containerColor2 == Colors.white
                              ? Colors.blue
                              : Colors.white;
                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(80),
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          "Touristic",
                          style: TextStyle(fontFamily: "Lobster", fontSize: 14),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                            color: _containerColor2,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _containerColor3 = _containerColor3 == Colors.white
                              ? Colors.blue
                              : Colors.white;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          "Authentic",
                          style: TextStyle(fontFamily: "Lobster", fontSize: 14),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                            color: _containerColor3,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 380,
                    width: width * .8,
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade200,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(12))),
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.red.shade300,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(80),
                                  bottomRight: Radius.circular(12))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(12)),
                            child: Image.asset(
                              "assets/img/scene1.jpg", fit: BoxFit.fill,
                              height: 200,
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Mykines island",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Sail",
                              color: Colors.blue.shade900),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/img/flag.png",
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              "France island",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Sail",
                                  color: Colors.blue.shade900),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(
              Icons.circle,
              color: Colors.black,
              size: 10,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle_outlined,
              color: Colors.black,
              size: 20,
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.heart_broken_outlined,
              color: Colors.black,
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
            label: 'like',
          ),
        ],
      ),
    );
  }
}
