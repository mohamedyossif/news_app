import 'package:application1/models/card_model.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<CardModel> topStoriescards = <CardModel>[];
  List<CardModel> recentUpdatescards = <CardModel>[];
  Widget _doSizedBox(double w, double h) {
    return SizedBox(
      width: w,
      height: h,
    );
  }

  Widget divider() {
    return Container(
      height: 1,
      color: Colors.grey,
    );
  }

  @override
  void initState() {
    super.initState();
    topStoriescards.add(CardModel(
        title:
            "India Covid crisis: Inside the Delhi hospital running low on beds and oxygen",
        source: "CNN",
        time: "2 day"));
    topStoriescards.add(CardModel(
      title: 'Biden says Armenian mass killing was genocide',
      source: 'BBC ',
      time: '20 hours',
    ));
    topStoriescards.add(CardModel(
        title: 'Brazil cuts environment budget despite climate summit pledge',
        source: 'CNA',
        time: '4 days'));
    recentUpdatescards.add(CardModel(
        title:
            "'Watford sealed automatic promotion back to the Premier League '",
        time: "2 day",
        color: Colors.orange));
    recentUpdatescards.add(CardModel(
        title: 'MLB: Fan takes catch ahead of Arizona Diamondbacks',
        time: '1 hours',
        color: Colors.teal));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // one item
          _drawContainer(),
          _doSizedBox(0, 15),
          //two item
          _drawTopStories(),
          _doSizedBox(0, 15),
          //three item
          _drawRecentUpdates(),

          _doSizedBox(0, 40),
        ],
      ),
    );
  }

// one item
  Widget _drawContainer() {
    return Container(
      width: double.infinity,
      height: 225,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: Text(
              'Covid: Man arrested after infecting 22 people in Majorca',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          _doSizedBox(0, 10),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Text(
              'The 40-year-old is alleged to have continued to go to work and the gym despite having a cough and a temperature of more than 40C (104F).',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }

//two item
  Widget _drawTopStories() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              "Top Stories",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 23, right: 10),
            child: Card(
                child: Column(
              children: [
                _drawSingleRow(topStoriescards[0].title,
                    topStoriescards[0].source, topStoriescards[0].time),
                divider(),
                _drawSingleRow(topStoriescards[1].title,
                    topStoriescards[1].source, topStoriescards[1].time),
                divider(),
                _drawSingleRow(topStoriescards[2].title,
                    topStoriescards[2].source, topStoriescards[2].time),
              ],
            )),
          ),
        ],
      ),
    );
  }

  Widget _drawSingleRow(String title, String source, String time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140,
          height: 120,
          margin: EdgeInsets.only(top: 17, bottom: 17),
          child: Image.asset('assets/images/background.png'),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _doSizedBox(0, 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(source),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        size: 15,
                      ),
                      Text(time),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        _doSizedBox(15, 0),
      ],
    );
  }

//three item
  Widget _drawRecentUpdates() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text(
              "RecentUpdates",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
          ),
          _singleColumn(recentUpdatescards[0].title, recentUpdatescards[0].time,
              recentUpdatescards[0].color),
          _singleColumn(recentUpdatescards[1].title, recentUpdatescards[1].time,
              recentUpdatescards[1].color),
        ],
      ),
    );
  }

  Widget _singleColumn(String _title, String _time, Color _color) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 8, top: 10),
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _drawCycle(_color),
                  _doSizedBox(0, 7),
                  Text(
                    _title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  _doSizedBox(0, 7),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        size: 15,
                      ),
                      Text(_time),
                    ],
                  ),
                  _doSizedBox(0, 7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawCycle(Color _color) {
    return Container(
      width: 100,
      height: 20,
      child: Center(
        child: Text(
          "Sport",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
