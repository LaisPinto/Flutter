import 'package:flutter/material.dart';

  class TextNewComponent extends Text {

    const TextNewComponent({
    Key? key,
    required String data
    }) : super(data, key: key);

    @override
    Widget build(BuildContext context) {
      return Text(
          data ?? "",
      );
    }
  }