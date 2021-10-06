import 'package:flutter/material.dart';
import 'package:map_teacher/const/app_icons.dart';
import 'package:map_teacher/settings_page.dart';

class ShowDrawer extends StatelessWidget {
  const ShowDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 32, 16),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Personalize',
                style: TextStyle(),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()),
                );
              },
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Contact us',
              ),
            ),
            ListTile(
              leading: Icon(MyFlutterApp.youtube),
              title: Text('Youtube'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MyFlutterApp.facebook_squared),
              title: Text('Facebook'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MyFlutterApp.instagram),
              title: Text('instagram'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MyFlutterApp.twitter),
              title: Text('Twitter'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MyFlutterApp.gmail),
              title: Text('Gmail'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
