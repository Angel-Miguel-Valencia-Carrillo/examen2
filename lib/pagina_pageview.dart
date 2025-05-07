import 'package:flutter/material.dart';
import 'package:valenciaexam/post1.dart';
import 'package:valenciaexam/post2.dart';
import 'package:valenciaexam/post3.dart';

class PageViewExam extends StatelessWidget {
  PageViewExam({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
