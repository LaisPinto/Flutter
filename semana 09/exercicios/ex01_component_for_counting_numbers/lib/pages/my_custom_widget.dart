import 'package:ex01_component_for_counting_numbers/core/component/card_component.dart';
import 'package:flutter/material.dart';

import '../core/component/_export_component.dart';

  class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  GestureDetector _rowgestoreDetector(context) =>
      GestureDetector(
          onTap: () {

      },
      child: _rowCard(context)
      ); //FOI

  CardComponent _rowCard(context) => CardComponent(
    elevation: 4.0,
    child: _rowPadding(context)
  ); //FOI

  PaddingComponent _rowPadding(context) =>
      PaddingComponent(
          padding: const EdgeInsets.all(16.0),
          child: _rowColumn(context)
      );// FOI

  Column _rowColumn(context) => Column(
    children: [
      _rowRow(),
      _rowPadding2(context)
    ],
  );

  PaddingComponent _rowPadding2(context) => PaddingComponent(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      'This is an article, trying to explain custom callbacks inside custom widgets.'
          ' Let\'s just add some more text just to make it a bulky description.',
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.grey),
    ),
  ); //FOI

  Row _rowRow() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _rowCircularArea(),
      _rowExpanded(),
      _rowIcon()
    ],
  );

  Icon _rowIcon() => const Icon(Icons.star_border);

  CircleAvatarComponent _rowCircularArea() => const CircleAvatarComponent(
    child: Text('WA'),
  ); //FOI

  Expanded _rowExpanded() => Expanded(
    child: _rowPadding3(),
  );

  PaddingComponent _rowPadding3() => PaddingComponent(
    padding: const EdgeInsets.only(left: 8.0),
    child: _rowColumn2()
  ); //FOI

  Column _rowColumn2() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text('Waleed Arshad'),
      Text('waleed@gmail.com')
    ],
  );

    @override
    Widget build(BuildContext context) {
      return _rowgestoreDetector(context);
    }
  }