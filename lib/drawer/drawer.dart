import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map_teacher/const/app_icons.dart';
import 'package:map_teacher/drawer/payment_gateway_page.dart';
import 'package:map_teacher/drawer/signin_page.dart';

class ShowDrawer extends StatelessWidget {
  const ShowDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 32, 16),
      child: Drawer(
        backgroundColor: Colors.deepOrangeAccent,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Personalize',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Accounts',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                Icons.payment,
                color: Colors.white,
              ),
              title: const Text(
                'Premium watch',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentWatchTab()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.details,
                color: Colors.white,
              ),
              title: const Text(
                'Details',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentWatchTab()),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Contact us',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(
                MyFlutterApp.youtube,
                color: Colors.white,
              ),
              title: const Text(
                'Youtube',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                MyFlutterApp.facebook_squared,
                color: Colors.white,
              ),
              title: const Text(
                'Facebook',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                MyFlutterApp.instagram,
                color: Colors.white,
              ),
              title: const Text(
                'instagram',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                MyFlutterApp.twitter,
                color: Colors.white,
              ),
              title: const Text(
                'Twitter',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                MyFlutterApp.gmail,
                color: Colors.white,
              ),
              title: const Text(
                'Gmail',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
