import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatelessWidget {

  final Widget child;
  const CircleAvatarComponent({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: child,
    );
  }
}
