import 'package:flutter/material.dart';
import 'package:our_market/cor/components/custom_search_field.dart';

class StoreViews extends StatelessWidget {
  const StoreViews({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CustomSearchField(),

          ],
        ),
      );

  }
}
