import 'package:flutter/material.dart';
import 'package:pembelajaran1/login_page/inbox.dart';

class Homepage extends StatefulWidget {
  final String username;
  const Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "mySiswa",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inbox()),
              );
            },
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text(
                "Assalamualaikum, ${widget.username}",
                style: TextStyle(fontSize: 30),
              ),
              Text("Semoga harimu menyenangkan"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.school)),
            SizedBox(width: 50),
            IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
