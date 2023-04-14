import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MySplashScreen(),
//     );
//   }
// }

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> _imagePaths = [
    'assets/img/scene1.jpg',
    'assets/img/screen1.jpg',
    'assets/img/tower.jpg',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = _currentPage--;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildSplashPage1(
              'Best Deals',
              'The journey of a thousand miles begins with a single step.',
              _imagePaths[0],
              width),
          _buildSplashPage1(
              'Exotic Places',
              'When You’re Travelling, You Are What You Are Right There And Then. People Don’t Have Your Past To Hold Against You. No Yesterdays On The Road.',
              _imagePaths[1],
              width),
          _buildSplashPage1(
              'Wedding Destination',
              'This wedding season, fall in love with endearing unconventional destination wedding locales',
              _imagePaths[2],
              width),
        ],
      ),
    );
  }

  Widget _buildSplashPage(String title, String subtitle, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSplashPage1(
      String title, String subtitle, String imagePath, double width) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                height: 400,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Sail",
              fontSize: 38,
              color: Colors.blue.shade800,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: SizedBox(
            width: width * .8,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  // fontFamily: "Sail",
                  fontSize: 14,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          width: width * .8,
          margin: EdgeInsets.all(26),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade800, //background color of button
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      //    Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      // );
                    },
                    child: Text('Get Started')),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
