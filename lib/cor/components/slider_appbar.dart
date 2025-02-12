import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:our_market/cor/app_colors.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentIndex = 0;

  final List<String> imageUrls = [
    'https://images.pexels.com/photos/30459688/pexels-photo-30459688/free-photo-of-scenic-aerial-view-of-island-near-dubrovnik.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30091807/pexels-photo-30091807/free-photo-of-aerial-view-of-sailboats-near-lopud-croatia.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30255235/pexels-photo-30255235/free-photo-of-scenic-view-of-lopud-island-with-boats-and-hills.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30255235/pexels-photo-30255235/free-photo-of-scenic-view-of-lopud-island-with-boats-and-hills.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30255235/pexels-photo-30255235/free-photo-of-scenic-view-of-lopud-island-with-boats-and-hills.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30255235/pexels-photo-30255235/free-photo-of-scenic-view-of-lopud-island-with-boats-and-hills.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/30255235/pexels-photo-30255235/free-photo-of-scenic-view-of-lopud-island-with-boats-and-hills.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imageUrls.map((url) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(url, fit: BoxFit.cover, width: 1000),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() => _currentIndex = entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key ? AppColors.kPrimaryColor : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        ],

    );
  }
}