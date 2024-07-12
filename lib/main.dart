import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Masonry GridView',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.yellow[400], // Change the color of the AppBar to yellow
          ),
          body: MasonryGridView.builder(
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 9, // Number of images
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0), // Border radius
                  child: Image.asset('assets/images/image${index + 1}.jpg'),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Action to be performed when the button is pressed
              print('Floating Action Button Pressed');
            },
            backgroundColor: Colors.purple[100], // Change the color of the button to yellow
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
