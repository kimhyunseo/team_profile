import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_profile/pages/eunseong_picture_page.dart';
import 'package:team_profile/pages/hyunseo_page.dart';

class EunseongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("소개")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(260),
                  margin: EdgeInsets.fromLTRB(30, 100, 30, 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 30,
                        spreadRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: AlignmentGeometry.topCenter,
                    child: Column(
                      children: [
                        Container(
                          width: 180, // 이미지를 사용할 때는 가로,세로 설정하는게 좋다.
                          height: 180,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 30,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/eunseong/emoji.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            //symmetric > vertical : 세로 , horizontal : 가로
                            margin:
                                EdgeInsets.only(top: 15, left: 50, right: 50),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                    offset: Offset(0, 5),
                                  )
                                ]),
                            child: Column(
                              children: [
                                Text(
                                  "지 은 성",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "flutter 빡공중",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          margin: EdgeInsets.only(top: 15, left: 50, right: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                    offset: Offset(0, 0))
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text("자기 소개",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left),
                              Text("Flutter 초보"),
                              Text("노란색을 좋아함"),
                              Text("바이크 타는것을 매우 좋아함"),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              vertical: 0.5, horizontal: 0.5),
                          margin: EdgeInsets.only(top: 15, left: 50, right: 50),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 15,
                                spreadRadius: 5,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            children: [
                              textBox("Flutter", FlutterLogo()),
                              textBox(
                                "dart",
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    "assets/eunseong/dart_logo.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                              textBox(
                                "Figma",
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: SvgPicture.asset(
                                    "assets/hyunseo/Figma.svg",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              vertical: 0.5, horizontal: 0.5),
                          margin: EdgeInsets.only(top: 15, left: 50, right: 50),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(0),
                            children: [
                              textBox2("🚗 운전"),
                              textBox2("🗺️ 여행"),
                              textBox2("🏍️ 바이크"),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EunseongPicturePage(),
                      ));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: AlignmentGeometry.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 0))
                      ]),
                  child: Text(
                    "사진 보기",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Container textBox(String text, Widget? image) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Row(
        children: [
          if (image != null) image,
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

// 암살자가 나를 세번째 찔렀다. 암살자가 실패했다.
  Container textBox2(String text) {
    // 이름 바꿀라면 f2 해서 바꾸면 위에도 같이 바뀜
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
