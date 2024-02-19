import 'package:flutter/material.dart';
import 'package:mushcamp/constans.dart';

class CapturePage extends StatelessWidget {
  const CapturePage({super.key});

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
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    shape: CircleBorder(),
                    backgroundColor: blueMain,
                    child: Image.asset(
                      'assets/folder.png',
                      width: 30,
                      height: 30,
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(width: 25),
                  Transform.scale(
                    scale: 1.5,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      backgroundColor: blueMain,
                      child: Image.asset(
                        'assets/scanButton.png',
                        width: 35,
                        height: 35,
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/detail-page');
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),

        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: const [
            Text(
              "+",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "+",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "+",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
