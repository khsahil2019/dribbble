import 'package:flutter/material.dart';

class PlaceDetailPage extends StatelessWidget {
  final String placeName;
  final String placeImage;
  final String placeDescription;
  final List<String> placeDetails;

  PlaceDetailPage({
    required this.placeName,
    required this.placeImage,
    required this.placeDescription,
    required this.placeDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              placeImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              placeName,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              placeDescription,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: placeDetails.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    placeDetails[index],
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            child: Text('Book Now'),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
