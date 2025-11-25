import 'package:flutter/material.dart';
import 'package:team_profile/pages/Eunseong_Page.dart';
import 'hyunseo_page.dart';

class MainPage extends StatelessWidget {
  final List<String> members = ['박진', '지은성', '김현서', '김영광'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('우리 팀을 소개합니다!')),
      body: ListView.builder(
        // members 안에 들어간 수 만큼 item count
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(members[index], style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              switch (members[index]) {
                // switch 문을 사용
                case '김현서':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HyeonseoPage()),
                  );
                  break;
                // 들어오는 (members[index]) 값이 '김현서'일 경우 HyeonseoPage()로 이동
                // 직접 연결하는 코드 작성해주세욤 ㅎㅎ
                case '지은성':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => EunseongPage()),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
