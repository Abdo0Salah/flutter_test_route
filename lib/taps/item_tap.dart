import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../tappar/tap1.dart';

class ItemTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                    child: Image.asset(
                  "assets/images/girl.png",
                )),
                Column(
                  children: [
                    Text("hellow, jada",
                        style: Theme.of(context).textTheme.bodySmall),
                    Text("Redy to work?",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                Spacer(),
                badges.Badge(
                  child: Icon(
                    Icons.notifications,
                    size: 40,
                    color: Colors.grey,
                  ), //icon style
                  badgeContent: SizedBox(
                      width: 35,
                      height: 5, //badge size
                      child: Center(
                        //aligh badge content to center
                        child: Text(
                          '',
                        ),
                      )),
                ),
              ],
            ),
            Container(
              width: 50,
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 249, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.heart_broken,
                                  color: Colors.deepPurpleAccent),
                              Text(
                                "heart rate",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Text(
                            "81 pm",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.orange,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.menu, color: Colors.deepPurpleAccent),
                              Text(
                                "heart rate",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Text(
                            "81 pm",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.orange,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_fire_department_outlined,
                                  color: Colors.deepPurpleAccent),
                              Text(
                                "heart rate",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Text(
                            "81 pm",
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Working pro",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TabBarView(
              children: [
                Center(
                  child: Text("Chats"),
                ),
                Center(
                  child: Text("Calls"),
                ),
                TapParPage1(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
