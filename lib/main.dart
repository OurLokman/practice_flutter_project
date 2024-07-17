import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Modal Bottom Sheet Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.photo),
                          title: Text('Photo'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Music'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Show Modal Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
