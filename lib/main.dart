
import 'package:application1/Utilities/themes.dart';
import 'package:application1/screens/home.dart';
import 'package:application1/screens/welecom_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _sharedPreferences=await SharedPreferences.getInstance();
  
  bool seen=_sharedPreferences.getBool('seen');
  print(seen);
  Widget _screen=WelecomScreen();
  if(seen==true ||seen==null)
  {
    _screen=WelecomScreen();
  }
  else
  {
    _screen=Home();
  }
  runApp(News(_screen));
}

class News extends StatelessWidget {
  final Widget _screen;
  News(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ProjectUtilities.themeData,
      home: SafeArea(child: this._screen),
    );
  }
}
