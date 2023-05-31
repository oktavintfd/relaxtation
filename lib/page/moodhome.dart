import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../page/checkin.dart';
import '../page/editmood.dart';
import '../provider/mood.dart';

class Moodhome extends StatefulWidget {
  @override
  _MoodhomeState createState() => _MoodhomeState();
}

class _MoodhomeState extends State<Moodhome> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Moods>(context).initialData();
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final allMoodProvider = Provider.of<Moods>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("MOOD CHECK-IN"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed('/moodcheck');
            },
          ),
        ],
      ),
      body: (allMoodProvider.jumlahMood == 0)
          ? Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No Data",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddMood.routeName);
                    },
                    child: Text(
                      "Add Mood",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: allMoodProvider.jumlahMood,
              itemBuilder: (context, index) {
                var id = allMoodProvider.allMood[index].id;
                return ListTile(
                  onTap: () {
                    // Navigator.pushNamed(
                    //   context,
                    //   EditMood.routeName,
                    //   arguments: id,
                    // );
                    Navigator.of(context).pushNamed('/editmood', arguments: id);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      allMoodProvider.allMood[index].emot,
                    ),
                  ),
                  title: Text(
                    allMoodProvider.allMood[index].mood,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMMd()
                        .format(allMoodProvider.allMood[index].date),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      allMoodProvider.deleteMood(id).then(
                        (_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Berhasil dihapus"),
                              duration: Duration(milliseconds: 500),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
