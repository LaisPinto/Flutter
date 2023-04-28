import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';


class MyHomePage  extends StatelessWidget {


   const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: const Text("HTML to Widget")),
        body:HtmlWidget(
          // the first parameter (`html`) is required
          '''
          <h3>Heading</h3>
          <p>
            A paragraph with <strong>strong</strong>, <em>emphasized</em>
            and <span style="color: red">colored</span> text.
          </p>
          <!-- anything goes here -->
          ''',


          customStylesBuilder: (element) {
            if (element.classes.contains('foo')) {
              return {'color': 'red'};
            }

            return null;
          },


          onErrorBuilder: (context, element, error) => Text('$element error: $error'),
          onLoadingBuilder: (context, element, loadingProgress) => CircularProgressIndicator(),


          renderMode: RenderMode.column,

          textStyle: TextStyle(fontSize: 14),

        ),

    );
  }
}
