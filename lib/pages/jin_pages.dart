import 'package:flutter/material.dart';

class JinPage extends StatelessWidget {
  @override
  
// 상단바
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 163, 159),
      appBar: AppBar(
          toolbarHeight: 60.0,
          title: Text(
            '박진',
            style: TextStyle(fontWeight: FontWeight.w900),
          )),
          
// 상단 왼쪽 동그란 사진
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 68,
                      backgroundImage:
                          AssetImage('assets/jin photo/IMG_7242.JPG'),
                    ),
                    SizedBox(
                      width: 10,
                    ),

// 상단 NAME
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 189, 195, 160),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "NAME",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "박진",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
// 상단 AGE
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 189, 195, 160),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "30",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
// 상단 MBTI
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 189, 195, 160),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "MBTI",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "ENTJ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
// 상단 프로필
              const SizedBox(width: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 170),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 128, 161, 128),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "프로필",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromARGB(221, 1, 2, 1),
                    height: 1.0,
                  ),
                ),
              ),

// 이모티콘 사진+글씨
              const SizedBox(height: 20),
              Container(
                child: Stack(alignment: Alignment.topCenter, children: [
                  Image.asset(
                    'assets/jin photo/hello.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 280,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Introducing Jin.",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 39, 65, 31),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),

// 이모티콘 밑에 박스 글씨
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 144, 148, 143),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "나는 박진, 30살입니다.\n(아직은 열정만 가득한 코딩 초보 학생) 👩🏻‍🎓\n\n자기소개 순서는\n좋아하는 것, 전공, 성격의 장단점을 입니다.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 39, 65, 31),
                      height: 1.5,
                    ),
                  ),
                ),
              ),

// 여백
              const SizedBox(height: 20),

//글씨
              SizedBox(
                  child: Text(
                "What i",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 39, 65, 31),
                ),
              )),
//글씨 밑에 박스 글씨
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 144, 148, 143),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "저는 자연과 여행을 좋아합니다.🌎✈️",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 39, 65, 31),
                      height: 1.0,
                    ),
                  ),
                ),
              ),

// 사진 2장
// 글씨 박스 밑에 여백주기
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_2536.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_5721.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    ))
                  ],
                ),
              ),

// 사진 2장 밑에 인스타 표시 사진
              Image.asset("assets/jin photo/IMG_6351.jpg"),


// 여백
              const SizedBox(height: 20),

//글씨
              SizedBox(
                  child: Text(
                "Department of Architecture",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 39, 65, 31),
                ),
              )),
//글씨 밑에 박스 글씨
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 144, 148, 143),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "저는 건축을 전공했습니다.\n현재는 Flutter를 배우는 코딩 초보 입니다 👩🏻‍🎓",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 39, 65, 31),
                      height: 1.0,
                    ),
                  ),
                ),
              ),

// 사진 4장
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/MTP2.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_8244.jpeg",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_8240.jpeg",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/MTP1.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    ))
                  ],
                ),
              ),

////사진 4장 밑에 인스타 표시
              Image.asset("assets/jin photo/IMG_6351.jpg"),
// 여백
              const SizedBox(height: 20),
// 성격의 장단점 "Strengths and weaknesses of personality"
              SizedBox(child: Text("Strengths and weaknesses of personality",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 39, 65, 31),
              ),
              )),
// 성격의 장단점 밑에 박스 글씨
              Padding(padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 144, 148, 143),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0,4),
                      ),
                    ],
                  ),
                  child: Text("어릴 때부터 장난꾸러기, 하고 싶은게 많았고,\n현재도 하고 싶은 일을 하면서 즐기면서 살고 있습니다",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 39, 65, 31),
                      height: 1.0,
                    ),
                  ),
                ),),

// 사진 2장 넣기
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/F7EFF88F-A578-48ED-B1DB-E84AF0B51136_1_105_c.jpeg",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/PHOTO_1510.jpg",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    ))
                  ],
                ),
              ),

// 박스 글씨
              Padding(padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 144, 148, 143),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0,4),
                      ),
                    ],
                  ),
                  child: Text("성격의 단점: 너무 많은 것을 동시에 처리하거나\n배우려는 욕심 때문에 가끔 과부하가 온답니다.\n\n성격의 장점: 호기심이 많고, 배우려는 도전 정신이 있고,\n도전하는걸 두려워하지 않습니다.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 39, 65, 31),
                      height: 1.0,
                    ),
                  ),
                ),),

// 사진 2장 넣기
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_2526.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/jin photo/IMG_2592.JPG",
                        fit: BoxFit.cover,
                        height: 180.0,
                      ),
                    ))
                  ],
                ),
              ),

// 사진 2장 밑에 인스타 표시 사진
              Image.asset("assets/jin photo/IMG_6351.jpg"),

// 여백
              const SizedBox(height: 20),
// 성격의 장단점 "Strengths and weaknesses of personality"
              SizedBox(child: Text("여기까지 입니다.\n감사합니다.",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 39, 65, 31),
              ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}


