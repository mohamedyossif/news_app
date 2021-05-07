
import 'package:application1/models/page_model.dart';
import 'package:application1/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelecomScreen extends StatefulWidget {
  @override
  _WelecomScreenState createState() => _WelecomScreenState();
}

class _WelecomScreenState extends State<WelecomScreen> {
  List<PageModel> pages = <PageModel>[];
  final pageIndexNotifier = ValueNotifier<int>(0);
  
  @override
  void initState() {
    super.initState();
    pages.add(PageModel(
      Icons.ac_unit_rounded,
      "Welecom!",
      "I was pleased as punch to see my old friend",
      "assets/images/image1.jpg",
    ));
    pages.add(PageModel(
      Icons.home_sharp,
      "Be Happy!",
      "Father was pleased as punch when he learnt about his son getting the highest marks.",
      "assets/images/image2.jpg",
    ));
    pages.add(PageModel(
      Icons.import_export_rounded,
      "Be Sad!",
      "This is a common English expression that you’ll hear after someone recovers from sickness or illness.",
      "assets/images/image3.jpg",
    ));
  }

  Widget _drawIndictor(int length) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }
  Widget _drawImages(int index)
  {
    return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(
                            pages[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // to draw images
                  _drawImages(index),
                  // to write icon and information
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -50),
                        child: Icon(
                          pages[index].iconData,
                          size: 150,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          pages[index].body,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: 3,
            onPageChanged: (index) => pageIndexNotifier.value = index,
          ),
         
          // to draw pages indictors
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Transform.translate(
              offset: Offset(0, 480),
              child: Container(
                child: _drawIndictor(pages.length),
              ),
            ),
          ),
        // to draw button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 21,
              ),
              child: SizedBox(
                width: 340,
                height: 44,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[900])),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          _updateState();
                         
                          return Home();},
                      ),
                    );
                  },
                  child: Text("GET STARTED"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  _updateState()async
  {
     SharedPreferences _sharedPreferences=await SharedPreferences.getInstance();
     _sharedPreferences.setBool('seen', false);

  }
}
