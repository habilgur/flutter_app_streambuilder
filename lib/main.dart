import 'package:flutter/material.dart';

import 'model/message.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email App"),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              var messageList = Message.messages[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text("HG"),
                ),
                title: Text(messageList["subject"]),
                subtitle: Text(
                  messageList["body"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: Message.messages.length),
      ),
    );
  }
}
