import 'dart:io';

import 'package:ex_menu_drawer/core/_export_core.dart';
import 'package:ex_menu_drawer/pages/_export_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuDrawer extends StatelessWidget {

  const MenuDrawer({Key? key}) : super(key: key);

  _createHeader(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Theme.of(context).primaryColor
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomRight
        )
      ),
      child: Stack(
        children: const [
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text('Laís Pinto - laisp19@hotmail.com',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            )
          ),
          Positioned(
            top: 45.0,
            left: 16.0,
            child: Icon(Icons.person, size: 100,)
          )
        ],
      )
    );
  }

  _createHeaderItem({required IconData icon, required String text, required GestureTapCallback ontap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
           padding: const EdgeInsets.only(left: 8.0),
           child: Text(text),
          )
        ],
      ),
      onTap: ontap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(context),
          const SizedBox(height: 10,),
          _createHeaderItem(
            icon: Icons.home,
            text: Constant.menuHome,
            ontap: () {
              Navigator.of(context).pop();
            }
          ),
          const SizedBox(height: 10,),
          const Divider(),
          _createHeaderItem(
            icon: Icons.list, 
            text: Constant.menuPageA, 
            ontap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => const APage()));
            }
          ),
          _createHeaderItem(
            icon: Icons.list,
            text: Constant.menuPageB,
            ontap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => const BPage()
              )
              );
              }
          ),
          const Divider(),
          _createHeaderItem(
            icon: Icons.list,
            text: Constant.menuAbout,
            ontap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => const AboutPage()));
              }
          ),
          const Divider(),
          _createHeaderItem(
              icon: Icons.directions_run_outlined,
              text: Constant.menuExit,
              ontap: () {
                if(Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if(Platform.isIOS) {
                  exit(0);
                }
              }
          ),
        ],
      ),
    );
  }
}

