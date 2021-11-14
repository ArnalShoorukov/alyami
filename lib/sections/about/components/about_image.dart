import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 300,
      width: 255,
      child: CarouselSlider(
        options: CarouselOptions(
          height: double.maxFinite,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: [
          'assets/images/home_one.jpg',
          'assets/images/home_two.jpg',
          'assets/images/home_three.jpg'
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image.asset(i, fit: BoxFit.cover,));
            },
          );
        }).toList(),
      ),
    );
  }
}
