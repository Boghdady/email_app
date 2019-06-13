import 'package:flutter/material.dart';

main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> titles = [
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: titles.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 8.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(titles[index]),
            subtitle: Text("Wlcome to index group, software company"),
            leading: CircleAvatar(
              child: Text("AB"),
            ),
            isThreeLine: false,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print(index);
            },
          );
        },
      ),
    );
  }
}
