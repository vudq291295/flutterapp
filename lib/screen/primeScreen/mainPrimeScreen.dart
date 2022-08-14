// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/changeNotifyModel.dart';
import 'package:provider/provider.dart';

import '../../data/initData.dart';
import 'dart:math'; // for max function

class MainPrimeScreen extends StatelessWidget {
  const MainPrimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var index = int.parse(context.watch<ChangeNotifyModel>().parameter);
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            child: TextBoxTittle(index),
          ),
          SizedBox(
            // flex: 4,
            child: Center(
                child: CalendarDatePicker(
              initialDate: InitData.listNews[index].time,
              firstDate: DateTime.utc(0000, 01, 01),
              lastDate: DateTime.utc(9999, 01, 01),
              onDateChanged: (value) {},
            )),
          ),
          Flexible(
            fit: FlexFit.loose,
            // height: 5000,
            // flex: 5,
            child: TextBox(index),
          )
        ],
      ),
    );

    // CustomScrollView(
    //   slivers: [
    //     SliverFillRemaining(
    //       hasScrollBody: true,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Expanded(
    //             flex: 4,
    //             child: Center(
    //                 child: CalendarDatePicker(
    //               initialDate: InitData.listNews[index].time,
    //               firstDate: DateTime.utc(0000, 01, 01),
    //               lastDate: DateTime.utc(9999, 01, 01),
    //               onDateChanged: (value) {},
    //             )),
    //           ),
    //           Expanded(
    //             flex: 5,
    //             child: SizedBox(height: 100.0, child: TextBox(index)),
    //           )
    //         ],
    //       ),
    //     )
    //   ],
    // );
  }

  Widget TextBoxTittle(int index) {
    return Container(
        margin: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
        child: RichText(
          text: TextSpan(
              text: InitData.listNews[index].title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black,
              )),
        ));
  }

  Widget TextBox(int index) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
      child: RichText(
        text: TextSpan(
            text: InitData.listNews[index].description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
              color: Colors.black,
            )),
      ),
    );
  }
}
