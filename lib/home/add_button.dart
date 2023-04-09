import 'package:flutter/material.dart';

import 'cards.dart';

class AddButton extends StatefulWidget {
  const AddButton(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.description})
      : super(key: key);
  final String title;
  final String subTitle;
  final String description;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        myCards.add(ExpandedTile(
          defination: widget.description,
          subTitle: widget.subTitle,
          title: widget.title,
        ));
        setState(() {

        });
      },
      child: Text("Proje Oluştur"),
    );
  }
}
