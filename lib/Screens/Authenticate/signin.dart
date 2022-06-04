import 'package:fire/Services/auth.dart';
import 'package:flutter/material.dart';

class Singin extends StatefulWidget {


  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {

  final AuthService _auth= AuthService();
  final _formKey =GlobalKey<FormState>();

  //Text field States
  String email="";
  String password="";
  String error="";

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
              padding: const EdgeInsets.fromLTRB(130.0,0,0,0),
              child:   Text("Sign In"),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height:30 ,),
                  Icon(
                    Icons.forum,
                    color: Colors.white70,
                    size: 180,
                  ),
                  TextFormField(
                    validator: (val)=>val!.isEmpty ? "Please Enter A Valid Email" : null,
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
                    validator: (val)=>val!.isEmpty ? "Please Enter A Valid Password" : null,
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
                              if(_formKey.currentState?.validate()!=null){
                                print(email);
                                dynamic result= await _auth.SigninWithEmail(email, password);
                                if (result==null){
                                  setState(() {
                                    error="Registeration Failed";
                                  }
                                  );
                                }else{
                                  print("success");
                                }
                              }
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
                             Navigator.pushNamed(context, '/register');

                            },

                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100.0,0,100.0,0),
                              child: Text(
                                "Register",



                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Center(
                        child: Text(
                            error,
                          style: TextStyle(
                            color: Colors.red,
                          ),
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
