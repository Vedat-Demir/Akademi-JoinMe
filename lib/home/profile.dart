import 'package:beautifull_login/home/home_body.dart';
import 'package:beautifull_login/main.dart';
import 'package:flutter/material.dart';
import 'dialog.dart';

class Profile extends StatefulWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              child: Icon(Icons.person,size: 100,),
              radius: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.person),
              hintText: 'Ad',
              labelText: 'Ad *',
             ), 
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Soyad',
            labelText: 'Soyad *',
             ), 
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
            decoration: const InputDecoration(
            icon: Icon(Icons.person,),
            hintText: 'Hakkında',
            labelText: 'Hakkında *',
             ), 
            ),
          ),
        ],
      ),

        bottomNavigationBar: BottomAppBar(
          color: Color(0xff232f34),
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => const HomePage()));
              },
              icon: Icon(
                Icons.home, 
                color: Color(0xfff9aa33),)
              ),
               SizedBox(width: 210,),
               IconButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Profile())
                  );
              }, 
              icon: Icon(
                Icons.person, 
                color: Color(0xfff9aa33),
                )
                
              ),
            ],
          ),
        ),
    );
  }
}