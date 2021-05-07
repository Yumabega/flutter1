import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {

  @override
  Widget build ( BuildContext context ){
    return Container(
      child: Column(
        children: [
          Image.network(
            "",
          )
        ],
      )
    );
  }


}