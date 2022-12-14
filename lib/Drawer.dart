import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/AuthService.dart';
import 'package:untitled12/screens/chats/chats_screen.dart';

import 'ContactPage.dart';
import 'LogoutPage.dart';
import 'SettingsPage.dart';
import 'SharePage.dart';
import 'TnC_Page.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {



  @override
  Widget build(BuildContext context) {
    return   Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          AuthService.is_login ?  UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              AuthService.name,
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(AuthService.email,
                style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
             // backgroundColor: Colors.black,
               child:  Image.network(AuthService.Profilepicurl.toString(), height: 100, width: 100, ),
            ),
          ):  DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Container(child: Text(' ')),
                          Container(child: Text(' ')),
                          Container(),

                          Center(
                            /*
                            child: FlatButton(

                              color:Colors.green,
                              child:Container(child: Text('Login')),
                              onPressed: (){setState(() {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  AuthService().handleAuthState()),//AccountPage()),
                                );

                                AuthService.is_login=true;
                              });}, ),
                            */
                          )
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),


         /* ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title:
            Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>SettingsPage()));
            },
          ),  */
         /* ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.white,
            ),
            title: Text(
              "Share",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>SharePage()));
            },
          ),  */


          ListTile(
            leading: Icon(Icons.contacts, color: Colors.white),
            title:
            Text("Contact Us", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>ChatsScreen(),));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.flag_rounded,
              color: Colors.white,
            ),
            title: Text(
              "Terms & Condition",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>TnC_Page()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AuthService().handleAuthState()),//AccountPage()),
              );
              /*
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LogoutPage())
              );
               */
            },
          ),
        ],
      ),
    );


    /*  Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              "MHD Mahmud Anik",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text("anik11556@gmail.com",
                style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(
                "M",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    backgroundColor: Colors.grey),
              ),
            ),
          ),
/*
                ListTile(

                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text("Home",style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                */

          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title:
            Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.white,
            ),
            title: Text(
              "Share",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts, color: Colors.white),
            title:
            Text("Contact Us", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.flag_rounded,
              color: Colors.white,
            ),
            title: Text(
              "Terms & Condition",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );*/
  }
}
