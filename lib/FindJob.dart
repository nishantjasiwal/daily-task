import 'package:flutter/material.dart';

class FindJob extends StatefulWidget {
  @override
  State<FindJob> createState() => _findjob();
}

class _findjob extends State<FindJob> {
  var categories = [
    "All",
    "Wedding",
    "Prewedding",
    "Fashion",
    "COMMERCIAL",
    "Under-Water",
    "Wild Life",
    "Sports",
    "Real Estate",
    "Video Editing",
    "Photo Retouching",
    "Internship"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Container(
        child: Container(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Find your creative job",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "  Search",
                      suffixIcon: Icon(Icons.search)),
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: 1.5 / 4.8,
                    mainAxisSpacing: 10,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(categories.length, (index) {
                      return Container(
                        child: Center(
                            child: Text(
                          categories[index],
                          textAlign: TextAlign.left,
                        )),
                        width: 10,
                        color: Colors.white,
                        height: 10,
                      );
                    })),
                height: 30,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recent Jobs",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2.4 / 4.8,
                      mainAxisSpacing: 10,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(20, (index) {
                        return Center(
                            child: Container(
                          child: Container(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.link_outlined)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "this is title of the vidogdgdgdsffefs",
                                          style: TextStyle(
                                              color: Colors.white,
                                              overflow: TextOverflow.ellipsis),
                                        )),
                                  )
                                ]),
                          ),
                          width: 500,
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/logo.png")),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black, width: 0),
                              color: Colors.blue),
                        ));
                      })),
                ),
              ),
            ),
          ],
        ))),
      ),
    );
  }
}
