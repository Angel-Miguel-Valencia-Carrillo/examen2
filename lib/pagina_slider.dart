import 'package:flutter/material.dart';

class SliderExam extends StatefulWidget {
  const SliderExam({Key? key}) : super(key: key);

  @override
  _SliderExamState createState() => _SliderExamState();
}

class _SliderExamState extends State<SliderExam> {
  // create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('S L I D E R'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _currentValue.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            Slider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 4,
              label: _currentValue.toString(),
              activeColor: Colors.yellow,
              inactiveColor: Colors.red,
              thumbColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
