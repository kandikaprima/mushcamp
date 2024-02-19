import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mushcamp/controller/cubit/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashBloc>(context).add(SetSplash());
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoadedState) {
            Navigator.pushReplacementNamed(context, '/home-page');
          }
        },
        builder: (context, state) {
          if (state is SplashLoadingState) {
            return Center(
              child: Image.asset('assets/logo.png'),
            );
          }
          return Container();
        },
      ),
    );
  }
}
