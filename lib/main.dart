import 'dart:async';
import 'dart:io';
import 'package:daily_task/Education.dart';
import 'package:daily_task/FindJob.dart';
import 'package:daily_task/Test.dart';
import 'package:daily_task/login.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    // only apply Aero theming on Windows.
    await Window.initialize();
    await Window.setEffect(
      effect: WindowEffect.mica,
      dark: true,
      color: Colors.black.withOpacity(0.6),
    );
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "main app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(microseconds: 2000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 400,
                  width: 400,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var index = 0;
  var ind = 0;
  var add = "";
  var entry = TextEditingController();
  var name = TextEditingController();
  var temp = [];

  void onclick(int _index) {
    setState(() {
      index = _index;
    });
  }

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 2000) {
          return Center(
            child: Container(
              color: Colors.deepOrangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        width: 98,
                        height: 98,
                      ),
                      Text(
                        "Please enter your name and add tasks",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 400,
                        child: TextField(
                          controller: name,
                          decoration: InputDecoration(
                              hintText: "Enter Name", border: InputBorder.none),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        width: 400,
                        height: 100,
                        child: TextField(
                          controller: entry,
                          decoration: InputDecoration(
                            hintText: "Enter task",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              var ent = entry.text.toString();
                              if (ent.isNotEmpty) {
                                setState(() {
                                  list.add(ent);
                                  entry.text = "";
                                });
                              }
                            },
                            child: Text("Add"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () async {
                                if (!name.text.isEmpty && !list.isEmpty) {
                                  final mailtoLink = Mailto(
                                    to: ['to@example.com'],
                                    subject: 'Today\'s Task',
                                    body: """
                           R.Sir/Mam,
                            Today I have worked on:
                          ${list.map((str) => "\n" + " ● " + str)} 
                                
                     
          
                          from- ${name.text.toString()}                
                          """,
                                  );
                                  // Convert the Mailto instance into a string.
                                  // Use either Dart's string interpolation
                                  // or the toString() method.
                                  await launch('$mailtoLink');
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                      "Required Name and Task field",
                                    ),
                                    backgroundColor: Colors.red,
                                  ));
                                }
                              },
                              child: Text("Send"),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Your task list"),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Container(
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                      onTap: () {
                                        setState(() {
                                          ind = index;
                                          list.removeAt(index);
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.red, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(list[index]),
                                          ),
                                        ),
                                      ));
                                },
                                itemCount: list.length,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  color: Colors.amberAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            "assets/images/logo.png",
                            width: 98,
                            height: 98,
                          ),
                          Text(
                            "Please enter your name and add tasks",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            width: 600,
                            child: TextField(
                              controller: name,
                              decoration: InputDecoration(
                                  hintText: "Enter Name",
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            width: 600,
                            height: 100,
                            child: TextField(
                              controller: entry,
                              decoration: InputDecoration(
                                hintText: "Enter task",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 300,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      var ent = entry.text.toString();
                                      if (ent.isNotEmpty) {
                                        setState(() {
                                          list.add(ent);
                                          entry.text = "";
                                        });
                                      }
                                    },
                                    child: Text("Add"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    width: 300,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        if (!name.text.isEmpty &&
                                            !list.isEmpty) {
                                          final mailtoLink = Mailto(
                                            to: ['dbvertex@gmail.com'],
                                            subject: 'Today\'s Task',
                                            body: """
                                   \n R.Sir/Mam,
                                    \n  Today I have worked on:
                                  ${list.map((str) => "\n" + "● " + str)} 
                                      
                                  \n from- ${name.text.toString()}                
                                  """,
                                          );
                                          // Convert the Mailto instance into a string.
                                          // Use either Dart's string interpolation
                                          // or the toString() method.
                                          await launch('$mailtoLink');
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text(
                                              "Required Name and Task field",
                                            ),
                                            backgroundColor: Colors.red,
                                          ));
                                        }
                                      },
                                      child: Text("send"),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("You can delete list by clicking."),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Container(
                              width: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                        onTap: () {
                                          setState(() {
                                            ind = index;
                                            list.removeAt(index);
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.red,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(list[index]),
                                            ),
                                          ),
                                        ));
                                  },
                                  itemCount: list.length,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    ));
  }
}
