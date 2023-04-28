

import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: HomeScreen(),
    );
  }
 }
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book_solid),
              activeIcon: Text('Articles'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye_solid),
            activeIcon: Text('Views'),
          ),
        ],
      ),
      tabBuilder: (context, i) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: (i == 0) ? const Text('Articles') : const Text('Views'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: Text(
                    'This is tab #$i',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .navLargeTitleTextStyle
                        .copyWith(fontSize: 32),
                ),
                onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context){
                        return DetailScreen(i == 0 ? 'Articles' : 'Views');
                      }),
                    );
                },
                ),
              ),
            );
          },
        );
      },
    );
 }
}

class DetailScreen extends StatefulWidget {
  const DetailScreen(this.topic, {super.key});
  final String topic;

  @override
  DetailScreenState createState() {
   return  DetailScreenState();
  }
}

class DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Details'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  child: const Text('Launch action sheet'),
                  onPressed: () {
                    showCupertinoModalPopup<int>(
                        context: context,
                        builder: (context) {
                          return CupertinoActionSheet(
                            title: const Text('Some choices!'),
                            actions: [
                              CupertinoActionSheetAction(
                                child: const Text('One!'),
                                onPressed: () {
                                  Navigator.pop(context,1);
                                },
                                isDefaultAction: true,
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Two!'),
                                onPressed: () {
                                  Navigator.pop(context,2);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Three!'),
                                onPressed: () {
                                  Navigator.pop(context,3);
                                },
                              ),
                            ],
                          );
                        }
                    );
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
  
}




