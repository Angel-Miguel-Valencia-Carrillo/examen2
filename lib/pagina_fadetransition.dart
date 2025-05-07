import 'package:flutter/material.dart';

class FadeTransitionExam extends StatefulWidget {
  const FadeTransitionExam({Key? key}) : super(key: key);

  @override
  State<FadeTransitionExam> createState() => _FadeTransitionExamState();
}

class _FadeTransitionExamState extends State<FadeTransitionExam>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fade Transition')),
      body: Center(
        child: FadeTransition(
          opacity: _animation!,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.deepPurple[300],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
