import 'package:application1/shared_widget/drawDrawer.dart';
import 'package:flutter/material.dart';

class FacebookFeed extends StatefulWidget {
  @override
  _FacebookFeedState createState() => _FacebookFeedState();
}


class _FacebookFeedState extends State<FacebookFeed> {
  final _hashStyle = TextStyle(
    color: Colors.orange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawDrawer(),
      appBar: AppBar(
        title: Text("Facebook Feeds"),
      ),
      body: ListView.builder(
        itemBuilder: (c, index) => Padding(
          padding: const EdgeInsets.all(4),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cardTitle(),
                _cardHead(),
                _cardHash(),
                _cardBody(),
                _cardFooter(),
              ],
            ),
          ),
        ),
        itemCount: 15,
      ),
    );
  }

  _cardTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: ExactAssetImage(
                  'assets/images/background.png',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  Mohamed yossif",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '  Fri 12 may 2021 14:30',
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.grey.shade600,
              ),
              Text(
                "25",
                style: TextStyle(color: Colors.grey.shade600),
              )
            ],
          )
        ],
      ),
    );
  }

  _cardHead() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 4,
        top: 8,
      ),
      child: Text(
        'Police have denied any wrongdoing, saying officers acted in self-defence.',
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  _cardHash() {
    return Container(
      child: Wrap(
        children: [
          TextButton(
            onPressed: null,
            child: Text('#Flutter', style: _hashStyle),
          ),
        ],
      ),
    );
  }

  _cardBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  _cardFooter() {
    return  Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [         
                  Text(
                    "10",
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(width: 3,),
                   Text(
                    "COMMENTS",
                    style: TextStyle(color: Colors.orange),
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
        );
  }
}
