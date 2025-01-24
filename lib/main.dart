import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:our_market/cor/app_colors.dart';
import 'package:our_market/features/logic/cubit/authentication_cubit.dart';
import 'package:our_market/features/ui/login_views/login_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://txqyjzyofzelywnkzywv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR4cXlqenlvZnplbHl3bmt6eXd2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc2NDQ1MTQsImV4cCI6MjA1MzIyMDUxNH0.zXK-Q0OMY3MvS9O1T6Plj168WUX4NjLQMDMY1FfO1Pg',
  );
  runApp(const ourMarket());
}

class ourMarket extends StatelessWidget {
  const ourMarket({super.key});

  // This widget is the root of your application.
  // This method builds the widget tree.
  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kScaffoldColor,
          useMaterial3: true,
        ),
        home: LoginView(),
        title: 'our Market',
        debugShowCheckedModeBanner: false,
        //
      ),
    );
  }
}


