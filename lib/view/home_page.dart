import 'package:flutter/material.dart';
import 'package:mushcamp/constans.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          onPressed: (){},
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: blueMain,
            child: Image.asset(
              'assets/scanButton.png',
              width: 35,
              height: 35,
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/capture-page');
            },
          ),
          SizedBox(height: 20),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: ListView(
              children: [
                const  Text(
                  "Welcome to  MushCamp!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const  Text(
                  "This program was created to fulfill the final project in my thesis.",
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                const  Text(
                  "Please follow the guidelines below if you want to use this application:",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: const  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '1. ',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'There is only 1 type of mushroom in one photo.\n',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      TextSpan(
                        text: '2. ',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Ensure that the mushroom you want to detect is clearly visible.\n',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                const  Text(
                  "Due to the limitations of the problem in the thesis, the types of mushrooms that can be detected are as follows:",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RichText(
                        text: const  TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '1. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Agaricus\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '2. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Amanita\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '3. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Cortinarius\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '4. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Entoloma\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '5. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Boletus\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: const  TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '6. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Hygrocybe\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '7. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Lactarius\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '8. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Russula\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: '9. ',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Suillus\n',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
