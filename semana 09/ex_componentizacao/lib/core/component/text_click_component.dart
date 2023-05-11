import 'package:flutter/material.dart';

import '_export_component.dart';

class TextClickComponent extends StatelessWidget {

  final VoidCallback onTap;
  final Widget child;

  const TextClickComponent({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestoreDetectorComponent(
      onTap: onTap,
      child: child,
    );
  }
}
