import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import '../theme/my_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:chips_choice/chips_choice.dart';

class HomeTap extends StatefulWidget {
  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  int tag = 0;
  int pageIndex = 0;
  int activIndex = 0;
  List<String> tags = [];
  List<String> options = [
    'Relaxation',
    'Miditation',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          "assets/images/img.png",
                        ),
                        backgroundColor: MyTheme.trans,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Moody",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Spacer(),
                      badges.Badge(
                        child: Icon(
                          Icons.notifications_none_sharp,
                          size: 35,
                          color: Colors.black,
                        ), //icon style
                        badgeContent: SizedBox(
                            width: 30,
                            height: 2, //badge size
                            child: Center(
                              //aligh badge content to center
                              child: Text(
                                '',
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "hellow ",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "Sara rose",
                        style: Theme.of(context).textTheme.displayMedium,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "how are u felling today",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                                child: Image.asset(
                              "assets/images/emo1.png",
                            )),
                            Text(
                              "love",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                                child: Image.asset(
                              "assets/images/emo2.png",
                            )),
                            Text(
                              "cool",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                                child: Image.asset(
                              "assets/images/emo3.png",
                            )),
                            Text(
                              "hapy",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                                child: Image.asset(
                              "assets/images/emo4.png",
                            )),
                            Text(
                              "sad",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Feature",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Spacer(),
                      Text("read more >",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.green)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activIndex = index;
                        });
                      },
                      height: 140,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: pageIndex,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 1),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      "assets/images/feature.png",
                      "assets/images/feature.png",
                      "assets/images/feature.png",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Image(image: AssetImage(i)),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Center(
                    child: AnimatedSmoothIndicator(
                      activeIndex: activIndex,
                      count: 3,
                      effect: SlideEffect(
                          spacing: 8.0,
                          radius: 200.0,
                          dotWidth: 6.0,
                          dotHeight: 6.0,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Exersice",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Spacer(),
                      Text("read more >",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(color: Colors.green)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 151,
                            height: 56,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 245, 255, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/images/ex1.png",
                                  ),
                                  color: Color.fromRGBO(182, 146, 246, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Relaxerd",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 151,
                            height: 65,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 242, 250, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/images/ex2.png",
                                  ),
                                  color: Color.fromRGBO(254, 178, 115, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Beathing",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 151,
                            height: 56,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 250, 245, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/images/ex3.png",
                                  ),
                                  color: Color.fromRGBO(250, 167, 224, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Relaxerd",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 151,
                            height: 56,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(240, 249, 255, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/images/ex4.png",
                                  ),
                                  color: Color.fromRGBO(124, 212, 253, 1),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Beathing",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
