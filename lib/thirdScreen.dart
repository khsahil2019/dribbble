import 'package:dribbble/forthScreen.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      body: Container(
          width: 600,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                // topRight: Radius.circular(80),
                // topLeft: Radius.circular(80),
                // bottomLeft: Radius.circular(80),
                // bottomRight: Radius.circular(80)
                ),
            image: DecorationImage(
              image: AssetImage(
                'assets/img/screen.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 190,
              ),
              SizedBox(
                width: width * .45,
                child: Text(
                  "Explore the beauty of the world with us!",
                  style: TextStyle(
                      fontSize: 34, color: Colors.white, fontFamily: "Sail"),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              SizedBox(
                width: width * .9,
                child: Text(
                  "If you like to travel, this is your place! here you can travel without hassle and enjoy it!",
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontFamily: "Sail"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  height: 40,
                  width: width * .35,
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 20, color: Colors.teal),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.white12),
                ),
              )
            ],
          )),
    );
  }
}
