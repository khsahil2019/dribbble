import 'package:dribbble/UI/category.dart';
import 'package:dribbble/UI/login.dart';
import 'package:dribbble/UI/popular_destination.dart';
import 'package:dribbble/UI/writeReview.dart';
import 'package:flutter/material.dart';

import 'detailPage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign up'),
      // ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_sharp)),
              Text("Login")
            ]),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontFamily: "Sail"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First name',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Last name',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 46),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlaceDetailPage(
                            placeDescription:
                                'The PlaceDetailPage widget displays the image of the place at the top of the screen using the Image.network widget. The name of the place is displayed below the image using a Text widget with a bold font. The description of the place is displayed below the name using another Text widget. The additional details about the place are displayed in a scrollable list using a ListView.builder widget.',
                            placeDetails: [
                              "Finally, an ElevatedButton widget is included at the bottom of the screen with the text 'Book Now'. You can customize this button to perform any action you want when it is pressed."
                            ],
                            placeImage: 'assets/img/screen.jpg',
                            placeName: 'London',
                          )),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(Icons.mail),
                  //SizedBox(width: 8),
                  Text('Create account'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(child: Text("or")),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey, //background color of button
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WriteReviewPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail),
                  SizedBox(width: 8),
                  Text('Continue with Gmail'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
