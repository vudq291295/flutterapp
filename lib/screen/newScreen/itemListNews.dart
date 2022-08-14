import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/common/boxDecorationCommon.dart';
import 'package:flutter_application_1/data/initData.dart';
import 'package:intl/intl.dart';

class ItemListNews extends StatelessWidget {
  int index;
  ItemListNews({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
      height: 180.0,
      decoration: ItemCommon().boxDecoration(),
      clipBehavior: Clip.hardEdge,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child:
                Image.asset(InitData.listNews[index].image, fit: BoxFit.cover),
          ),
          Expanded(
              flex: 9,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: TextBox(),
                // Text(InitData.listNews[index].description),
              ))
        ],
      ),
    );
  }

  Widget TextBox() {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
      child: Column(children: [
        Expanded(
            flex: 2,
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.fade,
              text: TextSpan(
                  text: InitData.listNews[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.black,
                  )),
            )),
        Expanded(
            flex: 3,
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  text: InitData.listNews[index].description,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0,
                    color: Colors.black,
                  )),
            )),
        Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white))),
                  minimumSize:
                      MaterialStateProperty.all<Size>(Size.fromHeight(40)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.grey.withOpacity(0.8)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  overlayColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0.1)),
                ),
                onPressed: () {},
                child: Row(children: [
                  Expanded(
                      flex: 9,
                      child: Text(DateFormat.Hms()
                          .format(InitData.listNews[index].time))),
                  const Expanded(flex: 1, child: Icon(Icons.cancel))
                ]),
              ),
            )),
      ]),
    );
  }
}
