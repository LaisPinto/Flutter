import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {

  final double elevation;
  final Widget child;

  const CardComponent({
    Key? key,
    required this.elevation,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: child,
    );
  }
}
