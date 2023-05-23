import 'package:flutter/material.dart';

class PaddingComponent extends StatelessWidget {

  final EdgeInsetsGeometry padding;
  final Widget child;

  const PaddingComponent({
    Key? key,
    required this.padding,
    required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
