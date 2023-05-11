
import 'package:flutter/material.dart';

import 'text_new_component.dart';

  class ElevatedButtonComponent extends StatefulWidget {

    final void Function()? onPressed;
    final String title;

    const ElevatedButtonComponent({
      Key? key,
      required this.onPressed,
      required this.title,
    }) : super(key: key);
  
    @override
    State<ElevatedButtonComponent> createState() => _ElevatedButtonComponentState();
  }
  
  class _ElevatedButtonComponentState extends State<ElevatedButtonComponent> {
    @override
    Widget build(BuildContext context) {
      return 
        ElevatedButton(
            onPressed: widget.onPressed,
            child: TextNewComponent( data: widget.title,)
        );
    }
  }
  