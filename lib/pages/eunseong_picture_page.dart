import 'package:flutter/material.dart';

class EunseongPicturePage extends StatelessWidget {
  const EunseongPicturePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/eunseong/korea1.jpeg',
      'assets/eunseong/korea2.jpeg',
      'assets/eunseong/korea3.jpeg',
      'assets/eunseong/cat1.jpeg',
      'assets/eunseong/cat2.jpeg',
      'assets/eunseong/cat3.jpeg',
      'assets/eunseong/bike1.jpeg',
      'assets/eunseong/bike2.jpeg',
      'assets/eunseong/bike3.jpeg',
      'assets/eunseong/viet_nam1.jpeg',
      'assets/eunseong/viet_nam2.jpeg',
      'assets/eunseong/viet_nam3.jpeg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("사진"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: images.length,
              padding:
                  EdgeInsets.only(top: 16, bottom: 30, left: 16, right: 16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => Dialog(
                              child: GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: Image.asset(images[index]),
                              ),
                            ));
                  },
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
