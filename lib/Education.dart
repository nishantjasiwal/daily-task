import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Education extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Education();
}

class _Education extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        backgroundColor: Colors.black45,
      ),
      body: Container(
        color: Colors.black54,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "About the phototribe app",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Inspiring Wedding Films",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      child: Text("this is title of the vido")),
                                )
                              ]),
                        ),
                        width: 500,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 0),
                            color: Colors.blue),
                      ));
                    })),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Cinemotography",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      child: Text("this is title of the vido")),
                                )
                              ]),
                        ),
                        width: 500,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 0),
                            color: Colors.blue),
                      ));
                    })),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
