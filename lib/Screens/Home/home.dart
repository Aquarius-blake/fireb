import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
          child: Column(
            children: <Widget>[
              DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(

                      ),
                      SizedBox(height: 10,),
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
                        onTap: (){

                        },
                      ),
                    ],
                  ))
            ],
          ),
        ),

      ),
    );
  }
}
