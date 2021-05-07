import 'package:application1/screens/home_screens/favorite.dart';
import 'package:application1/screens/home_screens/popular.dart';
import 'package:application1/shared_widget/drawDrawer.dart';
import 'package:flutter/material.dart';
class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawDrawer(),
      appBar: AppBar(title: Text("HeadLine News"),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
      ],
      bottom: TabBar(tabs: [
       Tab(child: Text("NEWS"),),
          Tab(child: Text("POPULAR")),
            Tab(child: Text("FAVORITED")),

      ],
      controller:_tabController ,
      ),
      ),
      body: TabBarView(children: [
          FavoriteScreen(),
          PopularScreen(),
          FavoriteScreen(),
      ],controller: _tabController,
      ),
    );
  }
}