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
Text("Sign In")
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: ElevatedButton(

                  onPressed: () async {
                   dynamic result= await _auth.Signguest();
                  if(result== null){
                    print("error");
                  }else
                    {
                      print("Success");
                    }

                   },
                  child: Text("Sign IN as Guest")),
            )

          ],
        ),
      ),
    );
  }
}
