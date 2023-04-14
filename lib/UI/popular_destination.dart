import 'package:flutter/material.dart';
import 'dart:developer';

class PopularDestination extends StatefulWidget {
  const PopularDestination({Key? key}) : super(key: key);

  @override
  State<PopularDestination> createState() => _PopularDestinationState();
}

class _PopularDestinationState extends State<PopularDestination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 240, 230),
        body: Stack(children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: ListView(children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Popular\nDestinations',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Sail",
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                destination(),
                Divider(
                  thickness: 0.5,
                ),
                destination(),
                Divider(
                  thickness: 0.5,
                ),
                destination(),
              ])),
          Positioned(
            top: 40.0,
            left: 0.0,
            right: 0.0,
            child: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'search',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  Widget destination() {
    return Container(
      // height: 250,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            )),
            child: Image.asset(
              'assets/img/scene1.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Ice Land',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '200/per night Average',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 172, 88),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
