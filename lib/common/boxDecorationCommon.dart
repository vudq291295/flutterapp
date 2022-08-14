import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCommon {
  BoxDecoration boxDecoration() {
    // ignore: unnecessary_new
    var boxDecoration = new BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(1.5, 1.5), // changes position of shadow
          )
        ]);
    return boxDecoration;
  }

  Widget StarRate() {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
      child: Center(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
            ]),
      ),
    );
  }
}
