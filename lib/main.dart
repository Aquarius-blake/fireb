import 'package:fire/Screens/Authenticate/Register.dart';
import 'package:fire/Screens/Home/Profile.dart';
import 'package:fire/Screens/Wrapper.dart';
import 'package:fire/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Models/Users1.dart';

void main() async{
  //Initialize Firebase functions
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Run App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User1?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
        routes: {
          '/register':(context)=>Register(),
          '/Profile':(context)=>Profile(),
        },
         ),
    );
  }
}

