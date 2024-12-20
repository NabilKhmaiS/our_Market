import 'package:flutter/material.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/ui/login_views/login_view.dart';

void main() {
  runApp(const ourMarket());
}

class ourMarket extends StatelessWidget {
  const ourMarket({super.key});

  // This widget is the root of your application.
  // this is
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(


        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        useMaterial3: true,
      ),
      home: const LoginView(),
      title: 'our Market',
      debugShowCheckedModeBanner: false,
    );
  }
}


