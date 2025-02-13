import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:our_market/cor/components/custom_circularprogindicator.dart';

class CasheImage extends StatelessWidget {
  const CasheImage({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(

         //height: 250,
     width: double.infinity,
      imageUrl:   url,
      placeholder: (context, url) => SizedBox(height: 200,
          child: CustomCircularprogindicator()
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
