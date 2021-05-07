import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Color> _lifeStyleColor = <Color>[
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.amber,
    Colors.blue,
    Colors.brown,
    Colors.green
  ];
  Widget _doSizedBox(double w, double h) {
    return SizedBox(
      width: w,
      height: h,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (c, index) {
        return Card(
          child: Column(
            children: [
              _authorRow(_lifeStyleColor[index]),
              _authorContent(),
              _doSizedBox(0, 17)
            ],
          ),
        );
      },
      itemCount: _lifeStyleColor.length,
    );
  }

  Widget _authorRow(Color _color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(
                      'assets/images/background.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Mohamed yossif",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  _doSizedBox(0, 6),
                  Row(
                    children: [
                      Text(
                        "15 min",
                        style: TextStyle(),
                      ),
                      _doSizedBox(15, 0),
                      Text(
                        "Lifestyle",
                        style: TextStyle(
                          color: _color,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
      ],
    );
  }

  Widget _authorContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 6, bottom: 10),
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 3,left: 8,right:8 ,bottom: 8),
            child: Column(
              children: [
                Text(
                  "Brazil: Environment police battle for Amazon rainforest",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                _doSizedBox(0, 6),
                Text(
                  "Brazil's environmental police force, IBAMA, is facing new challenges due to government policy changes, an anonymous senior officer has told the BBC.",
                  style: TextStyle(
                   
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
