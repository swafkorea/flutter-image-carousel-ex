import 'package:flutter/material.dart';
import 'package:pageview_ex/screens/home.screen.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Carousel'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                )),
            icon: Icon(Icons.image),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
          icon: Icon(Icons.photo_album),
          label: Text('Show'),
        ),
      ),
    );
  }
}
