import "package:flutter/material.dart";
import "package:flutter_application_3/screen_three.dart";
import "package:flutter_application_3/screen_two.dart";

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/luffy.jpeg'),
                ),
                accountName: Text('Isam Zia'),
                accountEmail: Text('isamzia091@gmail.com'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Calendar'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenThree.id);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Text('Screen 1'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
