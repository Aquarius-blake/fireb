import 'package:flutter/material.dart';

import '../../Services/auth.dart';

class Register extends StatefulWidget {
   Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email="";
  String password="";
  String Username="";
  String Fnmae= "";

  final AuthService _auth= AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100] ,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 2.0,
        title: Row(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,0,0,0),
              child:   Text("Register"),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(height:20 ,),
                  Icon(
                    Icons.forum,
                    color: Colors.white70,
                    size: 90,
                  ),
                  SizedBox(height:10 ,),
                  TextFormField(
                    onChanged: (val){
                      setState(() {
                        Fnmae=val;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Full Name",
                      filled: true,
                      fillColor: Colors.white70,
                    ),

                    style: TextStyle(

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (val){
                      setState(() {
                        Username=val;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      filled: true,
                      fillColor: Colors.white70,
                    ),

                    style: TextStyle(

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (val){
                      setState(() {
                        email=val;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Email Address",
                      filled: true,
                      fillColor: Colors.white70,
                    ),

                    style: TextStyle(

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (val){
                      setState(() {
                        password=val;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      filled: true,
                      fillColor: Colors.white70,
                    ),
                    style: TextStyle(

                    ),
                  ),
                  SizedBox(height: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: <Widget>[
                      Center(
                        child: ElevatedButton(
                            style: ButtonStyle(

                            ),
                            onPressed: () async {
                              print(email);
                              print(password);

                            },

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100.0,0.0,100.0,0),
                              child: Text(
                                "Sign in ",


                              ),
                            )
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ButtonStyle(

                            ),
                            onPressed: () async {
                              dynamic result= await _auth.Signguest();
                              if(result== null){
                                print("Error Signing into App");
                              }else
                              {
                                print("Success");
                                print(result.UID);
                              }

                            },

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(75.0,0,75.0,0),
                              child: Text(
                                "Sign in as Guest",
                                style: TextStyle(

                                ),

                              ),
                            )
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ButtonStyle(

                            ),
                            onPressed: () async {
                              dynamic result= await _auth.Signguest();
                              if(result== null){
                                print("Error ");
                              }else
                              {
                                print("Success");
                              }

                            },

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100.0,0,100.0,0),
                              child: Text(
                                "Register",



                              ),
                            )
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
