import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Rakib());
}

class Rakib extends StatelessWidget {
  const Rakib({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Rakib",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Icon(Icons.search),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Massege"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
        onPressed: () {},
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("Are you sure"),
                      title: Text("Exit App"),
                      actions: [
                        ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                        ElevatedButton(onPressed: () {}, child: Text("Exit")),
                      ],
                    );
                  });
            },
            child: Text("Exit")),
      ),
    );
  }
}
