import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:our_market/cor/components/cashe_image.dart';
import 'package:our_market/cor/functions/buildAppBar.dart';
import 'package:our_market/features/home/views/product_details/widgets/comments_list.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';

class ProductDetailsViews extends StatelessWidget {
  const ProductDetailsViews({super.key});
// const ProductDetailsViews
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'product Name'),
      body:
      ListView(
        children: [
          const CasheImage(
         url: 'https://img.freepik.com/free-psd/black-friday-special-sale-social-media-post-design-template_47987-17538.jpg?t=st=1734987248~exp=1734990848~hmac=f6e35959bbcb50562ad458da1d5e6368036dfc117595cc402de8a209cb6b8c58&w=740',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Name ",),
                    Text("13 \$")
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
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
                const SizedBox(height: 30,),
                const Text("Product description"),
                const SizedBox(height: 20,),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                 print(rating);
              },
            ),
                const SizedBox(height: 40,),
                CustomTextFromField(
                  labelText: 'type your feedback',
                  suffIcvon: IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                ),
                const SizedBox(height: 15,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Comment",style: TextStyle(
                    fontSize: 18,
                    
                  ),),
                ],
              ),
                const SizedBox(
                  height: 15,
                ),
              const commentsList(),


              ],
            ),
          )
          

        ],
      ),
    );
  }
}



