import 'package:application1/models/navigation_menu.dart';
import 'package:application1/screens/facebook_feed.dart';
import 'package:application1/screens/headLine_news.dart';
import 'package:application1/screens/home.dart';
import 'package:application1/screens/instagram_feed.dart';
import 'package:application1/screens/twitter_feed.dart';
import 'package:flutter/material.dart';

class DrawDrawer extends StatelessWidget {
  final drawerNavigator = [
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    List<NavMenu> navMenu = [
      NavMenu(title: 'Explore', destination: Home()),
      NavMenu(title: 'HeadLine News', destination: HeadLineNews()),
      NavMenu(title: 'Twitter Feeds', destination: TwitterFeed()),
       NavMenu(title: 'Instagram Feeds', destination: InstagramFeed()),
       NavMenu(title: 'Facebook Feeds', destination: FacebookFeed()),   ];
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 24,top: 75),
        child: ListView.builder(
            itemCount: navMenu.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(navMenu[index].title),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    return Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => navMenu[index].destination));
                  });
            }),
      ),
    );
  }
}
