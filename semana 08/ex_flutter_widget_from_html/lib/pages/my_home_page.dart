import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String html =
      '''
      <!DOCTYPE html>
      <html>
        <body>
           <h3>Heading</h3>
           <h3 class="H3_test">Teste</h3>
           <p id="Custom_widget">Custom widget</p>
          <p>
            A paragraph with <strong>strong</strong>, <em>emphasized</em>
            and <span style="color: red">colored</span> text.
          </p>
          <a href="https://www.google.com.br">Link para o Gloogle</a>
          <iframe src="https://www.youtube.com/watch?v=43mToR8excs" marginheight ="40"></iframe>
        </body>
      </html>
      ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: HtmlWidget(
          html,
            // all other parameters are optional, a few notable params:

            // specify custom styling for an element
            // see supported inline styling below
            customStylesBuilder: (element) {
            if (element.classes.contains('H3_test')) {
              return {'color': 'green'};
            }

            return null;
            },

            // render a custom widget
            customWidgetBuilder: (element) {
            if (element.attributes['id'] == 'Custom_widget') {
              return Container(
                height: 30,
                color: Colors.deepOrange,
                child: Text(element.text),
              );
            }

            return null;
            },

          // these callbacks are called when a complicated element is loading
          // or failed to render allowing the app to render progress indicator
          // and fallback widget
          onErrorBuilder: (context, element, error) => Text('$element error: $error'),
          onLoadingBuilder: (context, element, loadingProgress) => const CircularProgressIndicator(),

          // this callback will be triggered when user taps a link
          onTapUrl: (url) {
            debugPrint('tapped $url');
            return true; //future or bool
            },

            // select the render mode for HTML body
            // by default, a simple `Column` is rendered
            // consider using `ListView` or `SliverList` for better performance
            renderMode: RenderMode.listView,

            // set the default styling for text
            textStyle: const TextStyle(fontSize: 30),

            // turn on `webView` if you need IFRAME support (it's disabled by default)
            buildAsync: true,
        ),
    );
  }
}