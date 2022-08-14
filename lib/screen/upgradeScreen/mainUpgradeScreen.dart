// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/boxDecorationCommon.dart';

class MainUpgradeScreen extends StatelessWidget {
  const MainUpgradeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 10.0,
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 2,
              children: List.generate(4, (index) {
                return Container(
                    margin: const EdgeInsets.only(
                        left: 8, top: 8, right: 8, bottom: 8),
                    height: 10.0,
                    decoration: ItemCommon().boxDecoration(),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Item 1 $index',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ));
              }),
            ),
          ),
        )
      ],
    );
  }
}
