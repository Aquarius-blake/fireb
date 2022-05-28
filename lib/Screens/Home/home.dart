import 'package:flutter/material.dart';


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

                      )
                    ],
                  ))
            ],
          ),
        ),

      ),
    );
  }
}
