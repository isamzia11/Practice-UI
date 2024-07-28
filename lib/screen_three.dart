import "package:flutter/material.dart";

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(75),
                child: Container(
                  height: 70,
                  width: 100,
                  child: const Tab(
                    child: TabBar(tabs: [
                      Tab(
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        text: 'Calendar',
                      )
                    ]),
                  ),
                )),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Screen 3')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
