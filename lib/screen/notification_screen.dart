import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        elevation: 0.5,
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: Icon(Icons.home),
              title: Text("Item $index"),
            );
          })
    );
  }
}
