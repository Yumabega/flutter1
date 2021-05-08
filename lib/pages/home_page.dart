import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAA0000FF),
      appBar: AppBar(title: Center(child: Text('Agencia de Viajes'))),
      body: Center(
          child: Container(
              width: 500,
              height: 623,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/pic1.jpg"),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(
                        left: 15, top: 35, right: 15, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 45),
                    decoration: BoxDecoration(
                        color: Color(0xA21F83CA),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(60))),
                    child: Text(
                      'Viaja por el mundo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                  )
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => _go(value, context),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Descuentos')
        ],
      ),
    );
  }

  void _go(int index, BuildContext context) {
    print("llego");
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/sales');
        break;
    }
  }
}
