import 'package:application1/shared_widget/drawDrawer.dart';
import 'package:flutter/material.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawDrawer(),
      appBar: AppBar(
        title: Text("Twitter Feed"),
      ),
      body: ListView.builder(
        itemBuilder: (c, index) => Padding(
          padding: const EdgeInsets.all(4),
          child: Card(
            child: Column(
              children: [
                _cardHead('  Christina Meyers', ' @ch_meyers'),
                _cardBody(),
                _cardFoot(),
              ],
            ),
          ),
        ),
        itemCount: 15,
      ),
    );
  }

  _cardHead(String name, String email) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/background.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextSpan(
                    text: email,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ]),
              ),
              SizedBox(height: 5,),
              Text('  Fri 12 may 2021 14:30'),
            ],
          )
        ],
      ),
    );
  }

  _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12,top: 7,bottom: 12),
      child: Column(
        children: [
          Text(
              'The next period in the history of English was Early Modern English (1500–1700). Early Modern English was characterised by the Great Vowel Shift (1350–1700), inflectional simplification, and linguistic standardisation.'),
        
        ],
      ),
    );
  }

  _cardFoot() {
    return Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 2,right: 2,top: 5),
          child: Container(height: 1,color: Colors.grey,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.repeat,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Text(
                    "25",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SHARE",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "OPEN",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
