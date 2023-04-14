import 'package:dribbble/secondScreen.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
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
                  'assets/img/back.jpg',
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
                            height: 40,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SecondScreen()),
                                    );
                                  },
                                  child: Icon(Icons.arrow_back_sharp)
                                  //  Image.asset("assets/img/arr.png",
                                  //     height: 20, width: 20)
                                  ),
                              SizedBox(
                                width: width * .8,
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: "Sail"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * .1,
                              ),
                              CircleAvatar(
                                  radius: (50),
                                  backgroundColor: Colors.white,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/img/profilepic.png",
                                      height: double.infinity,
                                      width: double.maxFinite,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .12,
                              ),
                              const Text(
                                "Emilia",
                                style:
                                    TextStyle(fontSize: 28, fontFamily: "Sail"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .12,
                              ),
                              Text(
                                "Clarke",
                                style:
                                    TextStyle(fontSize: 28, fontFamily: "Sail"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Field(width, "E-mail", "emile_clarke@gmail.com"),
                          Field(width, "phone number", "+1 (312) 039 564286"),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .1,
                              ),
                              Text(
                                "Walnut Creek,",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Image.asset(
                                "assets/img/flag.png",
                                height: 25,
                              ),
                              Text(
                                "USA",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * .1,
                              ),
                              Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Divider(
                            height: 30,
                            thickness: 2,
                            color: Colors.white,
                            endIndent: 15,
                            indent: 15,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Image.asset(
                            "assets/img/logout.png",
                            height: 80,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }

  Widget Field(double width, String txt, String txt1) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: width * .1,
            ),
            Text(
              txt,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: width * .1,
            ),
            Text(
              txt1,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            )
          ],
        ),
        Divider(
          height: 30,
          thickness: 2,
          color: Colors.white,
          endIndent: 15,
          indent: 15,
        ),
      ],
    );
  }
}
