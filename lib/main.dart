import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mushcamp/controller/cubit/home_cubit.dart';
import 'package:mushcamp/controller/cubit/jamur_cubit.dart';
import 'package:mushcamp/controller/cubit/splash_bloc.dart';
import 'package:mushcamp/view/capture_page.dart';
import 'package:mushcamp/view/detail_page.dart';
import 'package:mushcamp/view/home_page.dart';
import 'package:mushcamp/view/splashScreen_page.dart';

void main() {
  runApp(MultiBlocProvider(
    providers : [
      BlocProvider(
        create: (context) => SplashBloc(),
      ),
      BlocProvider(
        create: (context) => HomeCubit(),
      ),
      BlocProvider(
        create: (context) => JamurCubit(),
      ),
    ],
    child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MushCamp",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home-page': (context) => const HomePage(),
        '/capture-page': (context) => const CapturePage(),
        '/detail-page': (context) => const DetailPage(),
      },
    );
  }
}