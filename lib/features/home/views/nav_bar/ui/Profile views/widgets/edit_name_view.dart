import 'package:flutter/material.dart';
import 'package:our_market/cor/functions/buildAppBar.dart';
import 'package:our_market/features/ui/forget_view/custom_Elevated_Btn.dart';
import 'package:our_market/features/ui/widgets/custom_text_from_field.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Edit Name"),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFromField(
              labelText: "Enter Name",
            ),
            SizedBox(height: 14,),
            CustomElevatedBtn(text: 'Update', onTap: () {},)
          ],
        ),
      ),
    );
  }
}
