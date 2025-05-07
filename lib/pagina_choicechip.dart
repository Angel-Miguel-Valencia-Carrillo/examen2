import 'package:flutter/material.dart';

class ChoiceChipExam extends StatefulWidget {
  const ChoiceChipExam({Key? key}) : super(key: key);

  @override
  State<ChoiceChipExam> createState() => _ChoiceChipExamState();
}

class _ChoiceChipExamState extends State<ChoiceChipExam> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choice Chip')),
      body: Center(
        child: ChoiceChip(
          avatar: const Icon(Icons.ac_unit),
          label: const Text('Choice Chip'),
          selected: _isSelected,
          onSelected: (newBoolValue) {
            setState(() {
              _isSelected = newBoolValue;
            });
          },
        ),
      ),
    );
  }
}
