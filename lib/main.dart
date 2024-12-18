import 'package:flutter/material.dart';
import 'package:our_market/features/ui/login_view.dart';

void main() {
  runApp(const ourMarket());
}

class ourMarket extends StatelessWidget {
  const ourMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginView(),
      title: 'our Market',
      debugShowCheckedModeBanner: false,
    );
  }
}


