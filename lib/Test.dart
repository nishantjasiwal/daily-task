import 'dart:ui';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State createState() => myclass();
}

class myclass extends State {
  var listOfTitle = [
    "This is title test long title1",
    "This is title 2",
    "This is title 3",
    "This is title 4",
    "This is title 5",
    "This is title 6",
    "This is title 7",
  ];

  var listOfMessage = [
    "This is Message 1 this is long ",
    "This is Message 2",
    "This is Message 3",
    "This is Message 4",
    "This is Message 5",
    "This is Message 6",
    "This is Message 7",
  ];
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Test")),
        body: Container(
          child: Center(
            child: Container(
              child: Expanded(
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Expanded(
                    child: Center(
                      child: ListView.builder(
                        itemBuilder: ((BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BlogDetails(index)));
                            },
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Card(
                                          child: Text(
                                            listOfTitle[index].toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Card(
                                            child: Text(
                                          listOfMessage[index].toString(),
                                        )),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text("created at :10/10/10"),
                                            Icon(Icons.linked_camera)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child:
                                        Image.asset("assets/images/logo.png"),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                        itemCount: listOfMessage.length,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ));
  }
}

class BlogDetails extends StatefulWidget {
  var _index = 0;
  BlogDetails(int index) {
    _index = index;
  }

  @override
  State<StatefulWidget> createState() => Details(_index);
}

class Details extends State {
  var layout = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
    return Container();
  });
  var _index = 0;
  Details(int index) {
    _index = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${_index.toString()}")),
      body: Center(
        child: Expanded(
          child: Container(
            child: Column(children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset("assets/images/logo.png"),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey, border: Border()),
                        ),
                        height: MediaQuery.of(context).size.height,
                      ),
                      Text(
                        "data",
                        style: TextStyle(color: Colors.amber),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "title  title title title title title title title title title title title title title title title title title ",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10/10/10"),
                                Icon(Icons.linked_camera)
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontent ")
                          ]),
                        ),
                        height: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
