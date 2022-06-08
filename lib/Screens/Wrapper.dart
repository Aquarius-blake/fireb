import 'package:fire/Screens/Authenticate/authenticate.dart';
import 'package:fire/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/Users1.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

final user =Provider.of<User1?>(context);

print(user);


    /*Checks if a user is signed in and returns the appropriate screen
    * */
if (user==null){
    return Authenticate();
  }
else{
  return Home();
}
  }
}
