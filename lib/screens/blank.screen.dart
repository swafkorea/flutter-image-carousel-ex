import 'package:flutter/material.dart';
import 'package:pageview_ex/screens/home.screen.dart';

/**
 * HomeScreen에서 dispose 이벤트 호출을 테스트 하기 위해 BlankScreen을 첫 화면으로 지정한다.
 * HomeScreen에서 back할 때 Navigation.pop() 이 호출되면서 HomeScreen이 destroy 된다.
 */
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
