import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int? page = 1;

  void _onScroll() {}


  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        children: <Widget>[
          makePage(
            image: 'assets/images/one.jpg',
            title: 'Buick Skylark GS 455 ',
            description:
                'Buick Skylark GS 455 Stage 1 – US vintage oldtimer muscle classic car',
          ),
          makePage(
            image: 'assets/images/two.jpg',
            title: 'Nature Reserve – NEOM, Saudi Arabia',
            description:
                'Canyon carving an immense gulf in the highlands, Nature Reserve – NEOM, Saudi Arabia | The NEOM Nature Reserve region is being designed to deliver protection and restoration of biodiversity across 95% of NEOM.',
          ),
          makePage(
            image: 'assets/images/three.jpg',
            title: 'Shiʻb Mūsá – NEOM, Saudi Arabia',
            description:
                'A beautiful and ancient spring fed canyon which weaves its way through 400-meter-tall towers of granite, sandstone and basalt, before plunging into the Gulf of Aqaba | Shiʻb Mūsá – NEOM, Saudi Arabia.',
          ),
          makePage(
              image: 'assets/images/four.jpg',
              title: "Lac de l'Orceyrette, Villar-Saint-Pancrace, France",
              description:
                  "Lac de l'orceyrette en fin d'après midi avec ses mélèzes aux couleurs de l'automne. Lac de l'Orceyrette at the end of the afternoon with its larches in the colors of autumn."),
        ],
      ),
    );
  }

  Widget makePage({image, title, description}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '/4',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this.page = page+1;
    });
  }
}
