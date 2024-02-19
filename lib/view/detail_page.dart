import 'package:flutter/material.dart';
import 'package:mushcamp/constans.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueMain,
        title: Text(
          "MushCamp",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: yellowMain,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home-page');
          },
          icon: Icon(Icons.arrow_back),
          color: yellowMain,
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/logo.png'),
            onPressed: () {
              // Tambahkan logika untuk aksi pengaturan di sini
              print('Logo Pressed');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: blueMain,
              padding: EdgeInsets.all(5),
              child: Text(
                'Kandika Prima Putra - Project MUSHCAMP @2024',
                textAlign: TextAlign.center,
                style: TextStyle(color: yellowMain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
