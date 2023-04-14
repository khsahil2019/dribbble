import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/homeback.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Colors.teal,
                                child: CircleAvatar(
                                    radius: (20),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child:
                                          Image.asset("assets/img/girlpho.png"),
                                    )),
                              ),
                              SizedBox(
                                width: width * .1,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Welcome Back!",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    "Ronalds Lichards",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: width * .35,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  "assets/img/bell.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: width * .9,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: width * .7,
                                  child: Text(
                                    "Discover a city",
                                    style: TextStyle(color: Colors.black26),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.read_more_outlined,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              category(width, "girlpho.png", "Top Deal"),
                              category(width, "girlpho.png", "Top Deal"),
                              category(width, "girlpho.png", "Top Deal"),
                              // category(width, "profilepic.png", "text")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .05,
                              ),
                              Text(
                                "Explore cities",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Sail",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "All",
                                style: TextStyle(color: Colors.black26),
                              ),
                              Text(
                                "Popular",
                                style: TextStyle(color: Colors.black26),
                              ),
                              Text(
                                "Recommended",
                                style: TextStyle(color: Colors.black26),
                              ),
                              Text(
                                "Most viewed",
                                style: TextStyle(color: Colors.black26),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CarouselSlider(
                            items: [
                              place(width, "tower.jpg", "Tower of paris",
                                  "Paris", "4.8", "Rs 9800/person", "flag.png"),
                              place(
                                  width,
                                  "scene1.jpg",
                                  "Mykines island",
                                  "France island",
                                  "4.9",
                                  "Rs 7900/person",
                                  "flag.png"),
                              place(width, "beach.jpg", "Indonesia", "America",
                                  "4.4", "Rs 42000/person", "flag.png"),
                            ],
                            options: CarouselOptions(
                              height: 350.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 500),
                              viewportFraction: 0.6,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .05,
                              ),
                              Text(
                                "Popular categories",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Sail",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CarouselSlider(
                            items: [
                              Circle("Hotel"),
                              Circle("Forest"),
                              Circle("Snow"),
                              Circle("Deseart"),
                              Circle("Flights"),
                            ],
                            options: CarouselOptions(
                              height: 80.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 9 / 4,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 500),
                              viewportFraction: 0.3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  Widget category(double width, String img, String text) {
    return Container(
      // margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 50,
      width: width * .3,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26, width: .5),
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Image.asset("assets/img/$img"),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  Widget place(double width, String img, String placename, String country,
      String rating, String price, String img2) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 300,
      width: width * .6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(12))),
      child: Column(
        children: [
          Container(
            height: 200,
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
                "assets/img/$img",
                fit: BoxFit.fill,
                height: 150,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            placename,
            style: TextStyle(
                fontSize: 24, fontFamily: "Sail", color: Colors.blue.shade900),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/$img2",
                height: 20,
                width: 20,
              ),
              Text(
                country,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Sail",
                    color: Colors.blue.shade900),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.yellow,
              ),
              Text(
                rating,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Sail",
                    color: Colors.blue.shade900),
              )
            ],
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 14, fontFamily: "Sail", color: Colors.blue.shade900),
          ),
        ],
      ),
    );
  }

  Widget Circle(String txt) {
    return Column(
      children: [
        CircleAvatar(
          radius: 21,
          backgroundColor: Colors.teal,
          child: CircleAvatar(
              radius: (20),
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/img/girlpho.png"),
              )),
        ),
        Text(
          txt,
          style: TextStyle(fontFamily: "Sail", fontSize: 20),
        )
      ],
    );
  }
}
