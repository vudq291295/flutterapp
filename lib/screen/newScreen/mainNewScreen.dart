// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/boxDecorationCommon.dart';
import 'package:flutter_application_1/data/initData.dart';
import 'package:flutter_application_1/model/changeNotifyModel.dart';
import 'package:flutter_application_1/screen/newScreen/itemListNews.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainNewScreen extends StatelessWidget {
  MainNewScreen({Key? key, required this.onNext, required this.controller})
      : super(key: key);
  VoidCallback onNext;
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            // flex: 1,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2,
              children: List.generate(4, (index) {
                return Container(
                    margin: const EdgeInsets.all(4),
                    decoration: ItemCommon().boxDecoration(),
                    child: Column(
                      children: [
                        ItemCommon().StarRate(),
                        Text(InitData.listNews[index].title)
                      ],
                    ));
              }),
            ),
          ),
          Flexible(
              // flex: 3,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      Container(),
                  itemCount: InitData.listNews.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Provider.of<ChangeNotifyModel>(context, listen: false)
                            .passParameter(index.toString());
                        controller.animateTo(2);
                      },
                      child: ItemListNews(index: index),
                    );
                  })),
        ],
      ),
    );
  }
}
