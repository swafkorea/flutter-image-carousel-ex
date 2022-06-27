import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  // pageView controller, 초기페이지 번호는 0
  final controller = PageController(initialPage: 0);
  // 이미지 파일명 suffix 배열, PageView와 timer callback에서 사용하기 때문에 변수로 선언
  final imageIndexes = ['a', 'b', 'c', 'd', 'f'];

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      int current = controller.page!.toInt(); // 현재 페이지
      int next = (current + 1) % imageIndexes.length; // 다음 페이지: '%'연산자(나머지 연산자)로 최대값을 넘지 않도록 함.
      print('current = $current, next = $next');
      controller.animateToPage(
        next,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();

    print('before timer.cancel()  : $timer');
    timer?.cancel(); // timer가 null이 아닐때만 cancel()을 호출
    print('after timer.cancel() : $timer');

    // if (timer != null) {
    //   timer!.cancel();
    // }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: PageView(
        controller: controller,
        children: imageIndexes
            .map(
              (e) => Image.asset(
                'assets/images/fly-$e.jpg',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
