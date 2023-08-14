import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int totalPage = 4;

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
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Buick Skylark GS 455 ',
            description:
                'Buick Skylark GS 455 Stage 1 – US vintage oldtimer muscle classic car',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Nature Reserve – NEOM, Saudi Arabia',
            description:
                'Canyon carving an immense gulf in the highlands, Nature Reserve – NEOM, Saudi Arabia | The NEOM Nature Reserve region is being designed to deliver protection and restoration of biodiversity across 95% of NEOM.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Shiʻb Mūsá – NEOM, Saudi Arabia',
            description:
                'A beautiful and ancient spring fed canyon which weaves its way through 400-meter-tall towers of granite, sandstone and basalt, before plunging into the Gulf of Aqaba | Shiʻb Mūsá – NEOM, Saudi Arabia.',
          ),
          makePage(
              page: 4,
              image: 'assets/images/four.jpg',
              title: "Lac de l'Orceyrette, Villar-Saint-Pancrace, France",
              description:
                  "Lac de l'orceyrette en fin d'après midi avec ses mélèzes aux couleurs de l'automne. Lac de l'Orceyrette at the end of the afternoon with its larches in the colors of autumn."),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/$totalPage'.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AnimationLimiter(
                      child: AnimationConfiguration.staggeredList(
                        position: 0,
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 500),
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    AnimationLimiter(
                      child: AnimationConfiguration.staggeredList(
                        position: 1,
                        duration: const Duration(milliseconds: 500),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 500),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(right: 3),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 3),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 3),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 3),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                              const Text(
                                '4.0',
                                style: TextStyle(color: Colors.white70),
                              ),
                              const Text(
                                '(2300)',
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AnimationLimiter(
                        child: AnimationConfiguration.staggeredList(
                          position: 2,
                          duration: const Duration(milliseconds: 500),
                          child: SlideAnimation(
                            duration: const Duration(milliseconds: 500),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const AnimationLimiter(
                      child: AnimationConfiguration.staggeredList(
                        position: 3,
                        duration: Duration(milliseconds: 500),
                        child: SlideAnimation(
                          duration: Duration(milliseconds: 500),
                          child: Text(
                            'READ MORE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
