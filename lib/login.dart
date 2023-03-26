import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var name = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "name", prefixIcon: Icon(Icons.account_circle)),
                  controller: name,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "email", prefixIcon: Icon(Icons.email)),
                  controller: email,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    if (name.value.text.isEmpty) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Empty")));
                    } else if (email.value.text.isEmpty) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Empty")));
                    } else {
                      callapi(name.value.text.toString(),
                          email.value.text.toString(), context);
                    }
                  },
                  icon: Icon(Icons.login))
            ]),
          ),
        ),
      ),
    );
  }
}

void callapi(String name, String email, BuildContext context) async {
  http.Response res;
  res = await http.post(Uri.parse("http://10.0.2.2/newprj/setdata"),
      body: <String, String>{"title": name, "body": email});

  if (res.statusCode == 200) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("inserted")));
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("faild")));
  }
}
