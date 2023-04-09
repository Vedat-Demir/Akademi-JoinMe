import 'package:beautifull_login/home/cards.dart';
import 'package:flutter/material.dart';
import 'package:beautifull_login/home/home_body.dart';

import 'add_button.dart';

Future<void> dialogBuilder(BuildContext context) {
  TextEditingController titleController = new TextEditingController();
  TextEditingController subTitleController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  return showDialog<void>(
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

           ],
         ),
       ),
        );
    },
  );
}
