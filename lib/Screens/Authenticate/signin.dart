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
            child: Column(
              children: <Widget>[
                SizedBox(height:30 ,),
                Icon(
                    Icons.forum,
                  color: Colors.white70,
                  size: 180,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Email Address",
                    filled: true,
                    fillColor: Colors.white70,
                  ),

                  style: TextStyle(

                  ),
                ),
                SizedBox(height: 20,),
                TextField(
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

                          onPressed: () async {
                            dynamic result= await _auth.Signguest();
                            if(result== null){
                              print("Error");
                            }else
                            {
                              print("Success");
                              print(result.UID);
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
      ),
    );
  }
}
