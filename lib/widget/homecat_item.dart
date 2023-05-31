import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/meditation.dart';

class MeditationItem extends StatelessWidget {
  final String id;
  final String title;
  final String creator;
  final String imageUrl;

  MeditationItem(this.id, this.title, this.creator, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/meditation_player',
          arguments: id,
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover),
                ),
                width: 170,
                height: 100),
            SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: (Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )))),
            SizedBox(
              height: 5,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: (Text(this.creator,
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )))),
          ],
        ),
      ),
    );
  }
}
