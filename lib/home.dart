import 'package:flutter/material.dart';

//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String logins = "not inside yet";
  TextEditingController task = TextEditingController();
  //adding to firebase

  login() async {
    // ignore: unused_local_variable
    //UserCredential usercredential =
    //  await FirebaseAuth.instance.signInAnonymously();
    setState(() {
      logins = 'logged in';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TODO"),
        ),
        body: Container(
          //padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //color: Colors.grey[350],
          child: Column(
            //decoration: new BoxDecoration(color: Colors.white),
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      height: 70,
                      width: 350,
                      color: Colors.red[350],
                      child: TextField(
                        controller: task,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "Add Task"),
                      )),
                  Container(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                      ),
                      child: Icon(Icons.add),
                      onPressed: () {
                        login();
                      },
                    ),
                  )
                ],
              ),
              new Container(
                child: Text(logins),
                //child:StreamBuilder(builder: builder)
              ),
            ],
          ),
        ));
  }
}
