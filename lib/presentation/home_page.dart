import 'package:flutter/material.dart';
import 'package:flutter_ui_app/data/animal.dart';
import 'package:flutter_ui_app/presentation/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cat = Animal();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Text("Hello World"),
          Text("${cat.animalColor}"),
          Text("${cat.animalLeg}"),
          Container(
            height: 40,
            color: Colors.red,
            child: Row(
              children: [
                Text("Hey buddy"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Press"),
                ),
                // Text("Hey buddy"),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.yellow,
      bottomNavigationBar: null,
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final route = MaterialPageRoute(
            builder: (context) {
              return ProfilePage(
                appBarName: "Comes from home Page",
              );
            },
          );
          final response = await Navigator.push(context, route);
        },
        label: const Text("Floating Action Button"),
      ),
    );
  }
}
