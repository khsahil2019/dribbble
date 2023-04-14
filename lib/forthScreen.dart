import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      body: Container(
          width: 600,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(80)),
            image: DecorationImage(
              image: AssetImage(
                'assets/img/shade3.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Explore",
                style: TextStyle(fontSize: 58, fontFamily: "Sail"),
              ),
              Text(
                "the World",
                style: TextStyle(fontSize: 58, fontFamily: "Sail"),
              ),
              Text(
                "with us",
                style: TextStyle(fontSize: 58, fontFamily: "Sail"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 35,
                  ),
                  SizedBox(
                    width: width * .1,
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: width * .5,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(82),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(12))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(80),
                              topLeft: Radius.circular(30),
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
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: width * .5,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(82),
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(12))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(80),
                              topLeft: Radius.circular(30),
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
                  )
                ],
              ),
            ],
          )),
    );
  }
}
