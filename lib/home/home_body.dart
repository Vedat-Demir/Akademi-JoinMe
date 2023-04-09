import 'package:flutter/material.dart';

import 'cards.dart';

import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = new TextEditingController();
  TextEditingController subTitleController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E4F4F),
      appBar: AppBar(
        backgroundColor: Color(0xff2C3333),
        title: Text("JOIN ME"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(myCards.length,(index){
            return myCards[index];
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Yeni Proje Oluştur'),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Proje oluşturmak için aşağıdaki alanları doldurunuz'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Proje başlığı",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: subTitleController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Açıklama başlığı",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: descriptionController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Açıklama",
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if(titleController.text == "" || descriptionController.text == "" ||
                              subTitleController.text == ""){

                          }else {
                            setState(
                              () {
                                myCards.insert(0,ExpandedTile(
                                  defination: descriptionController.text,
                                  subTitle: subTitleController.text,
                                  title: titleController.text,
                                ));
                              },
                            );
                          }
                          descriptionController.text = "";
                           subTitleController.text="";
                           titleController.text="";
                          Navigator.of(context).pop();
                        },
                        child: Text("EKLE"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );

        },
        backgroundColor: Color(0xffeab226),
        child: Icon(Icons.add,color: Color(0xff232f34),),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          color: Color(0xff2C3333),
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
              onPressed: (){},
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

