import 'package:flutter/material.dart';

class EducationDetail extends StatefulWidget {
  const EducationDetail({super.key});

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("details")),
      body: Container(
        color: Colors.black54,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This and that wedding",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "some message for test some message for test some message for test some message for test some message for test ",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "some basic description about photoshoot and location ",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Inspiring Wedding Films",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
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
          ),
        ]),
      ),
    );
  }
}
