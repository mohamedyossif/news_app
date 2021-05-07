import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (c, index) {
        return Card(
          child: _drawSingleRow(
              "India Covid crisis: Inside the Delhi hospital running low on beds and oxygen",
              "micheal",
              "1 day"),
        );
      },
      itemCount: 20,
    );
  }

  Widget _drawSingleRow(String title, String source, String time) {
    return Row(
      children: [
        Container(
          width: 140,
          height: 120,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Image.asset('assets/images/background.png'),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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

  Widget _doSizedBox(double w, double h) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}
