import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  List items = [
    {
      "title": "Aventura",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$1500",
      "image": "assets/images/pic1.jpg",
    },
    {
      "title": "China",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$3500",
      "image": "assets/images/pic2.jpg",
    },
    {
      "title": "Hawai",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$2500",
      "image": "assets/images/pic3.jpg",
    },
    {
      "title": "Londres",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$2800",
      "image": "assets/images/pic4.jpg",
    },
    {
      "title": "Paris",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$4500",
      "image": "assets/images/pic5.jpg",
    },
    {
      "title": "Roma",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$1500",
      "image": "assets/images/pic6.jpg",
    },
    {
      "title": "China",
      "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
      "cost": "\$6500",
      "image": "assets/images/pic7.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(title: Center(child: Text('Descuentos'))),
      body: Center(
          child: Container(
              child: Column(
                children: [
                  Container(
                    width: 600,
                    height: 120,
                    padding: EdgeInsets.only(
                        left: 45, top: 30, right: 45, bottom: 10),
                    decoration: BoxDecoration(
                      color: Color(0xA21F83CA),
                      image: DecorationImage(
                        image: AssetImage("assets/images/pic0.jpg"),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                      ),
                    ),
                    child: Text(
                      'Agencia\nde Viajes',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.indigo,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 559,
                    child: new ListView.builder
                      (
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return new Row(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                child: Image.asset(
                                  items[index]["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 222,
                                height: 150,
                                padding: EdgeInsets.only(
                                    left: 15, top: 30, right: 15, bottom: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      items[index]["title"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight:FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      items[index]["text"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight:FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      items[index]["cost"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight:FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                    ),
                  )
                ],
      ))),
    );
  }
}
