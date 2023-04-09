import 'package:flutter/material.dart';

List<ExpandedTile> myCards = [
  ExpandedTile(
    title: "Hesap mankinası",
    subTitle: "Flutter üzerinden bilimsel hesap makinası",
    defination: "5 kişilik bir ekip ile baştan sona projeyi yapıp kendimizi geliştirmek istiyoruz projeyi yapıp kendimizi geliştirmek istiyoruz",
  ),
  ExpandedTile(
    title: "Film uygulaması",
    subTitle: "Firebase - Flutter",
    defination: "Firebase üzerinden stream ve data çekerek vizyon filmleri gösterecek olan bir uygulama yazmak istiyoruz",
  ),

];


class ExpandedTile extends StatelessWidget {
  ExpandedTile({
    required this.title,
    required this.subTitle,
    required this.defination,
  });

  final String title;
  final String subTitle;
  final String defination;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      elevation: 15,
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
          // backgroundColor: Color(0xff232f34),
          title: Container(
            color: Colors.grey,
            child: Row(
              children: [
                FlutterLogo(
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  this.title,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    //Color(0xFFF9AA33),
                  ),
                ),
              ],
            ),
          ),
          trailing: SizedBox(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    this.subTitle,
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      //Color(0xFFF9AA33),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    this.defination,
                    style: TextStyle(
                      color: Colors.white,
                      //Color(0xFFF9AA33),
                    ),
                  ),
                  TextButton(
                    onPressed: () {

                    },
                    child: Text("Daha Fazla",style: TextStyle(color: Color(0xffffef40),fontSize: 15),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
