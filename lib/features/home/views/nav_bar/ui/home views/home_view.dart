import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/cor/components/custom_search_field.dart';
import 'package:our_market/features/home/views/nav_bar/ui/home%20views/Category_list%20view.dart';
import 'package:our_market/features/ui/forget_view/custom_Elevated_Btn.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const CustomSearchField(),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/buy.jpg"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Popular Categories",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CategoryListview(),
          SizedBox(
            height: 15,
          ),
          Card(
            //shape: RoundedRectangleBorder(
             //   borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        child: Image(
                          image: NetworkImage(
                              "https://img.freepik.com/free-psd/black-friday-special-sale-social-media-post-design-template_47987-17538.jpg?t=st=1734987248~exp=1734990848~hmac=f6e35959bbcb50562ad458da1d5e6368036dfc117595cc402de8a209cb6b8c58&w=740"),
                        )),
                    Positioned(
                      child:Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),

                      ) ),
                        child: Text('10% OFF ',style: TextStyle(
                          color: AppColors.kWhiteColor,
                        ),),


                      )),
                  ],
                ),
                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Product Name ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: AppColors.kGreyColor,)),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("200 LE ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text(
                                "120 lE ",
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kGreyColor,
                                ),),
                            ],
                          ),
                          CustomElevatedBtn(text: 'Buy Now',onTap: (){},)
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
//v

