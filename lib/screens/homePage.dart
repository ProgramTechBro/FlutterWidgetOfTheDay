import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_day/utils/snackbar.dart';
import '../daily_widget/app_bar.dart';
import '../data/tab_data.dart';
import '../local_widgets/tab_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: tabDataList.length,
      vsync: this,
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.styled(
        title: 'Widget of the Day',
        gradientColors: const [Color(0xff6750a4), Color(0xff9c27b0)],
        tabController: _tabController,
        tabs: tabDataList.map((d) => d.tabItem).toList(),
        scrolledUnderElevation: 6.0,
        shadowColor: Colors.deepPurple,
        animateColor: true,
        onSettingsTap: () => SnackbarHelper.show(context, 'Setting Tapped'),
        onNotificationTap: () => SnackbarHelper.show(context, 'Notification Tapped'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabDataList
            .map((data) => TabContent(data: data))
            .toList(),
      ),
    );
  }
}



