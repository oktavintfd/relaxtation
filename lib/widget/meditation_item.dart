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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: 5,
          ),
          Text(this.creator,
              style: TextStyle(
                color: Colors.white.withOpacity(.7),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ))
        ],
      )),
    );
  }
}
