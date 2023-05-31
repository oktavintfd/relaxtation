import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  final String id;
  final String title;
  final String musician;
  final String imageUrl;

  MusicItem(this.id, this.title, this.musician, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/music_player', arguments: id);
        },
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 0, 71, 107),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  title: Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      )),
                  subtitle: Text(musician,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                  trailing: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              height: 7,
            )
          ],
        ));
  }
}
