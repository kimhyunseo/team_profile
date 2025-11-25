import 'package:flutter/material.dart';

class EunseongPage extends StatelessWidget {
  const EunseongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " 지은성 ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " 나이 : 비밀 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " MBTI : ESTP ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " 사는곳 : 인천 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              color: Colors.black,
              child: Text(
                " 좋아하는 색상 : 노란색 ",
                style: TextStyle(
                  color: Colors.amber.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              " 하고 싶은 말 : 잘 부탁 드립니다",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              "assets/eunseong/Es_Photo.jpg",
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " 삽교호 놀이동산 뒷 주차장 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/eunseong/cat2.jpeg",
              width: 500,
              height: 600,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "우리집 고양이 1 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/eunseong/cat1.jpeg",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "우리집 고양이 2 ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 500,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 50),
              decoration: BoxDecoration(
                color: Colors.amber.shade400,
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "소    개    끝 ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 70,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
