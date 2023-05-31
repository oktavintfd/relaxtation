import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/navbar.dart';
import 'package:flutter_application_1/widget/meditation_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/meditation.dart';

class Meditation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meditationData = Provider.of<Meditations>(context);
    final allMeditation = meditationData.allMeditations;

    return Scaffold(
      backgroundColor: Color(0xff8EC5FC),
      bottomNavigationBar: Navbar(
        bgcolor: Color(0xff0F143E),
      ),
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: new Text("Meditation",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ))),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF8EC5FC),
            Color(0xff0F143E),
          ],
        )),
        padding: EdgeInsets.only(top: 5, bottom: 15, left: 10, right: 10),
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: allMeditation.length,
          itemBuilder: (ctx, i) => MeditationItem(
            allMeditation[i].id,
            allMeditation[i].title,
            allMeditation[i].creator,
            allMeditation[i].imageUrl,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
