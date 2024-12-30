import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:our_market/cor/components/cashe_image.dart';
import 'package:our_market/cor/functions/buildAppBar.dart';

class ProductDetailsViews extends StatelessWidget {
  const ProductDetailsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'product Name'),
      body:
      ListView(
        children: [
          CasheImage(
         url: 'https://img.freepik.com/free-psd/black-friday-special-sale-social-media-post-design-template_47987-17538.jpg?t=st=1734987248~exp=1734990848~hmac=f6e35959bbcb50562ad458da1d5e6368036dfc117595cc402de8a209cb6b8c58&w=740',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name ",),
                    Text("13 \$")
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                   Row(
                    children: [
                      Text("3  "),
                      Icon(Icons.star,color: Colors.amber,),

                    ],
                  ),
                    Icon(Icons.favorite_border,color: Colors.grey,),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Product description"),
                SizedBox(height: 20,),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),

              ],
            ),
          )
          

        ],
      ),
    );
  }
}
