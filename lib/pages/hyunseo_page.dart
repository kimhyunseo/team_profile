import 'package:flutter/material.dart';

class HyeonseoPage extends StatelessWidget {
  const HyeonseoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('김현서')),
      body: Column(
        children: [Text("현서 소개 페이지")],
      ),
    );
  }
}
