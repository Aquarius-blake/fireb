import 'package:fire/Screens/Authenticate/Register.dart';
import 'package:fire/Screens/Authenticate/signin.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignin=true;

  Function? toggleView(){
    setState(() {
      showSignin=!showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showSignin){

    return Container(
      child: Singin(toggleView:toggleView()),
    );
    }
    else{
      return Container(
        child: Register(toggleView:toggleView()),
      );
    }
  }
}
