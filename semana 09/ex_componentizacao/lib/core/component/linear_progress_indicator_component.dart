import 'package:flutter/material.dart';

class LinearProgessIndicatorComponent extends StatelessWidget {
  
  final double progressPercentage;
  
  const LinearProgessIndicatorComponent({
    Key? key, 
    required this.progressPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: LinearProgressIndicator(
        value: progressPercentage,
        minHeight: 8,
        backgroundColor: Colors.white,
        color: const Color(0xff00A285),
      ),
    );
  }
}
