import 'package:flutter/material.dart';

// public class
class YeonggwangPage extends StatefulWidget {
  const YeonggwangPage({super.key});

  @override
  State<YeonggwangPage> createState() => _YeonggwangPage();
}

// private class
class _YeonggwangPage extends State<YeonggwangPage> {
  int _counter = 0;

// 클릭 시마다 _counter 값 1 증가
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

// Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          title: Text('김영광')),
      body: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/yeonggwang/yg_photo.jpg',
                        height: 200, fit: BoxFit.cover),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topCenter,
                            decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.all(
                                        Radius.circular(8))),
                                color: Color.fromARGB(128, 138, 241, 255)),
                            height: 100,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("이름 : 김영광",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("나이 : 27",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("전공 : 컴퓨터공학",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ])),
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.favorite,
                                  color: Color(0xFFFF0000), size: 24),
                              SizedBox(width: 20),
                              Text('$_counter', style: TextStyle(fontSize: 24))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                  child: ListView(
                children: [
                  SubHeadingBar(subTitle: "Habby"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/yeonggwang/football.jpg',
                          width: 150,
                          height: 200,
                        ),
                        Image.asset('assets/yeonggwang/lol.jpg',
                            width: 150, height: 100)
                      ]),
                  SubHeadingBar(subTitle: "Skill"),
                  SizedBox(
                    width: 200,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset('assets/yeonggwang/flutter.jpg',
                            width: 150, height: 150),
                        Image.asset('assets/yeonggwang/kotlin.webp',
                            width: 150, height: 150),
                        Image.asset('assets/yeonggwang/compose.png',
                            width: 150, height: 150)
                      ],
                    ),
                  ),
                  SubHeadingBar(subTitle: "Favorite Ani"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/yeonggwang/shinJjang.avif',
                            width: 150, height: 150),
                        Image.asset('assets/yeonggwang/draemon.webp',
                            width: 150, height: 150),
                      ])
                ],
              )),
            ],
          )),
      floatingActionButton: FloatingActionButton.small(
        onPressed: _incrementCounter,
        child: const Icon(Icons.favorite),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}

class SubHeadingBar extends StatelessWidget {
  final String subTitle;

  const SubHeadingBar({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 36,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8))),
            color: Color.fromARGB(128, 231, 137, 255)),
        child: Center(
            child: Text("$subTitle",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))));
  }
}
