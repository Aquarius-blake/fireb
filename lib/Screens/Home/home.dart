import 'package:fire/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final  AuthService _auth=AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 2.0,
        title: Row(
          children: <Widget>[
            Text(
              "Homepage",
              style: TextStyle(

              ),
            )
          ],
        ),

      ),
      drawer: Drawer(
        backgroundColor: Colors.white70,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 60.0,
                        ),
                        Center(
                          child: Text("Username"),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 10,),
                ListTile(
                  leading: Icon(Icons.person,
                    color: Colors.black, size:50.0,),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,

                    ),

                  ),
                  onTap: () async{
                    Navigator.pushNamed(context, '/Profile');
                  },
                ),
                SizedBox(height: 40,),
                ListTile(
                  leading: Icon(LineIcons.alternateSignOut,
                    color: Colors.black, size:50.0,),
                  title: Text(
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,

                    ),

                  ),
                  onTap: () async{
                    await _auth.SignOut();
                  },
                ),
                SizedBox(height: 20.0,),
                Divider(
                  height: 40,
                  color: Colors.black,
                  thickness: 3,
                ),
                Center(
                  child: Text(
                    "POWERED by Flutter",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}
