import 'package:flutter/material.dart';

import '../constant/dimes.dart';

class MovieCard extends StatelessWidget {
   MovieCard({Key? key,required this.image}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: kContainer170x,
        margin: EdgeInsets.only(right: kSP10x),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset:const Offset(2, 2),
              spreadRadius: 1,
              blurRadius: 0.8
            )
          ]
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
