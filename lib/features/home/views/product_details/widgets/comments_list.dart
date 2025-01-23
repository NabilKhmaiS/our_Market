

import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';

class commentsList extends StatelessWidget {
  const commentsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => User_Coment(), separatorBuilder: (context, index) => Divider(
      color: AppColors.kPrimaryColor,
    ), itemCount: 10);
  }
}

class User_Coment extends StatelessWidget {
  const User_Coment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('Usre Name',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          Row(
            children: [
              Text("Comment"),
            ],
          ),
          SizedBox(height: 5,),

          Row(
            children: [
              Text('Replay',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          Row(
            children: [
              Text("Replay....."),
            ],
          )
        ],
      ),
    );
  }
}



