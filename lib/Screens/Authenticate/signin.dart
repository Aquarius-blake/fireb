import 'package:fire/Services/auth.dart';
import 'package:flutter/material.dart';

class Singin extends StatefulWidget {
  const Singin({Key? key}) : super(key: key);

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {

  final AuthService _auth= AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.lightBlueAccent ,
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height:30 ,),
              Icon(
                  Icons.forum,
                color: Colors.white70,
                size: 180,
              ),
              TextField(

                style: TextStyle(

                ),
              ),
              SizedBox(height: 20,),
              TextField(
                  style: TextStyle(

                  ),
              ),
              SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Center(
                    child: ElevatedButton(

                        onPressed: () async {
                          dynamic result= await _auth.Signguest();
                          if(result== null){
                            print("Error");
                          }else
                          {
                            print("Success");
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

                        onPressed: () async {
                          dynamic result= await _auth.Signguest();
                          if(result== null){
                            print("Error");
                          }else
                          {
                            print("Success");
                          }

                        },

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(75.0,0,75.0,0),
                          child: Text(
                            "Sign in as Guest",


                          ),
                        )
                    ),
                  ),
                  Center(
                    child: ElevatedButton(

                        onPressed: () async {
                         dynamic result= await _auth.Signguest();
                        if(result== null){
                          print("Error");
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
    );
  }
}
