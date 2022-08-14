import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/initData.dart';
import 'package:flutter_application_1/model/changeNotifyModel.dart';
import 'package:flutter_application_1/screen/newScreen/mainNewScreen.dart';
import 'package:flutter_application_1/screen/primeScreen/mainPrimeScreen.dart';
import 'package:flutter_application_1/screen/upgradeScreen/mainUpgradeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  InitData.InitListNews();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChangeNotifyModel()),
    ],
    child: const FadeAppTest(),
  ));
}

class JobApplicationFlow extends StatefulWidget {
  const JobApplicationFlow({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _JobApplicationFlowState createState() => _JobApplicationFlowState();
}

class _JobApplicationFlowState extends State<JobApplicationFlow>
    with SingleTickerProviderStateMixin {
  // We need a TabController to control the selected tab programmatically
  late final _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Application'),
        // Use TabBar to show the three tabs
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.blueGrey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: const [
          Tab(
            icon: Icon(Icons.feed),
            text: "News",
          ),
          Tab(
            icon: Icon(Icons.featured_play_list),
            text: "Prime",
          ),
          Tab(
            icon: Icon(Icons.space_dashboard),
            text: "Minister",
          ),
        ],
      ),
      body: TabBarView(
        // make sure we can't switch tabs with interactive drag gestures
        // physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          MainNewScreen(
            onNext: () => {
              // indexDetail = Random().nextInt(100),
              // _tabController.index = 1,
              // print("$indexDetail")
            },
            controller: _tabController,
          ),
          const MainUpgradeScreen(),
          const MainPrimeScreen(),
        ],
      ),
    );
  }
}

class FadeAppTest extends StatelessWidget {
  const FadeAppTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fade Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JobApplicationFlow(),
    );
  }
}
