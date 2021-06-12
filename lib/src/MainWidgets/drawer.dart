import 'package:flutter/material.dart';
import 'package:gradproject/src/MainScreens/books/page.dart';
import 'package:gradproject/src/MainScreens/find_your_account/page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('gemy@google.com'),
            accountName: Text('Ahmed Gamal'),
            currentAccountPicture: const FlutterLogo(),
          ),
          DrawerItem(
            title: 'profile',
            icon: Icons.person,
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => FindYourAccount())),
          ),
          DrawerItem(
            title: 'activites',
            icon: Icons.local_activity,
            onTap: () {},
          ),
          DrawerItem(
            title: 'ask your doctor',
            icon: Icons.local_hospital_outlined,
            onTap: () {},
          ),
          DrawerItem(
            title: 'about us',
            icon: Icons.info,
            onTap: () {},
          ),
          DrawerItem(
            title: 'books',
            icon: Icons.local_library_sharp,
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => BooksPage())),
          ),
          DrawerItem(
            title: 'settings',
            icon: Icons.settings,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const DrawerItem({Key key, this.title, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(title, style: Theme.of(context).textTheme.headline6),
        leading: Icon(icon),
      ),
    );
  }
}
