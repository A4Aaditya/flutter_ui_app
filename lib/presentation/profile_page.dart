// import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ui_app/presentation/notification_page.dart';
// import "package:http/http.dart" as http;

class ProfilePage extends StatefulWidget {
  final String appBarName;
  const ProfilePage({
    super.key,
    required this.appBarName,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List data = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarName),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          // final indexData = data[index];
          return Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                ),
                // Text(indexData["id"].toString()),
                SizedBox(width: 12),
                // Text(
                //   indexData["body"],
                // )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return NotificationPage();
          // });
          // Navigator.pushReplacement(context, route);
          fetchData();
        },
        child: const Text("Press"),
      ),
    );
  }

  void fetchData() async {
    setState(() {
      count++;
    });
    log("Button pressed ${count}");
    // log("Before Api call ${data.length}");
    // final url = Uri.parse("https://dummyjson.com/comments");
    // final response = await http.get(url);
    // final body = jsonDecode(response.body);
    // final listOfComments = body["comments"];

    // setState(() {
    //   data = listOfComments;
    // });
    // log(listOfComments.toString());
    // log("After Api call ${data.length}");
  }
}
