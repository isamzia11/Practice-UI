import "package:flutter/material.dart";
import "package:flutter_application_3/screen_three.dart";

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blue,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(75),
                child: Container(
                  height: 75,
                  width: 100,
                  child: const Tab(
                    child: TabBar(tabs: [
                      Tab(
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        text: 'Home',
                      )
                    ]),
                  ),
                ),
              )),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/luffy.jpeg'),
                  ),
                  title: Text('Monkey D Luffy'),
                  onTap: () {},
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
