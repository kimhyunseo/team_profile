import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HyunseoPage extends StatelessWidget {
  const HyunseoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('김현서')),
      body: Column(
        children: [
          HsProfile(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(child: Bar()),
                SizedBox(
                  width: 16,
                ),
                SkillList(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridImage(),
        ],
      ),
    );
  }
}

class HsProfile extends StatelessWidget {
  const HsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(color: Colors.black12, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2))
                ]),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/hyunseo/profile.jpg'),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Bubble(
              // margin: BubbleEdges.only(left: 4),
              nip: BubbleNip.leftBottom,
              color: Colors.blue[50],
              child: Text(
                '새로운 것에 호기심이 많아\n항상 도전하는 사람입니다.\n혼자보다는 함께 협업하며\n서로의 강점을 살려 성장해요!',
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Lv 24', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: 0.8,
            minHeight: 12,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[200]!),
          ),
        ),
      ],
    );
  }
}

class SkillList extends StatelessWidget {
  const SkillList({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 45;
    const skills = ['Ai', 'Ps', 'Figma', 'React'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: skills
          .map((skill) => SvgPicture.asset(
                'assets/hyunseo/$skill.svg',
                width: size,
                height: size,
              ))
          .toList(),
    );
  }
}

class GridImage extends StatelessWidget {
  const GridImage({super.key});

  @override
  Widget build(BuildContext context) {
    const images = [
      'assets/hyunseo/hsprofile1_baseball.jpeg',
      'assets/hyunseo/hsprofile2_majong.jpeg',
      'assets/hyunseo/hsprofile3_meow.jpeg',
      'assets/hyunseo/hsprofile4_animalcrossing.png',
      'assets/hyunseo/hsprofile5_tamagotchi.jpeg',
      'assets/hyunseo/hsprofile6_pikmin.png',
      'assets/hyunseo/hsprofile7_splatoon.png',
      'assets/hyunseo/hsprofile8_figure.jpeg',
      'assets/hyunseo/figure9_art.jpeg',
      'assets/hyunseo/figure10_we.png',
    ];

    return Expanded(
      child: GridView.builder(
        itemCount: images.length,
        padding: EdgeInsets.only(top: 16, bottom: 30, left: 16, right: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
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
    );
  }
}
