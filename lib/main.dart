import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/home/main_home_view.dart';
import 'package:our_market/features/ui/login_views/login_view.dart';

void main() {
  runApp(const ourMarket());
}

class ourMarket extends StatelessWidget {
  const ourMarket({super.key});

  // This widget is the root of your application.
  // This method builds the widget tree.
  // This widget is the root of your application.
  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set the app's theme'
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        useMaterial3: true,
      ),
      home:  MainHomeView(),
      title: 'our Market',
      debugShowCheckedModeBanner: false,
      //
    );
  }
}


