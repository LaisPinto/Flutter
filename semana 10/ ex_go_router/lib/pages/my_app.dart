import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '_export_pages.dart';

//the route configuretion
final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
            return const MyHomePage(title: 'Flutter Go Router');
        },
        routes: <RouteBase>[
          GoRoute(
            name: 'settings',
            path: 'settings/:name',
            builder: (BuildContext context, GoRouterState state) {
                return  SettingsPage(name: state.pathParameters["name"] ?? "Nome não definido",);
            }
          ),
          GoRoute(
            path: 'home_abc',
            builder: (BuildContext context, GoRouterState state) {
                return const HomeABCPage();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'a',
                builder: (BuildContext context, GoRouterState state) {
                  return const APege();
                },
                routes: <RouteBase>[
                  GoRoute(
                    path: 'b',
                    builder: (BuildContext context, GoRouterState state) {
                      return const BPage();
                    },
                    routes: <RouteBase>[
                      GoRoute(
                        path: 'c',
                        builder: (BuildContext context, GoRouterState state) {
                          return const CPage();
                        },
                      )
                    ]
                  )
                ]
              )
            ]
          ),
        ]
      ),

    ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Go Router',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      routerConfig: _router,
    );
    //const MyHomePage(title: 'Flutter Go Router'),
  }
}