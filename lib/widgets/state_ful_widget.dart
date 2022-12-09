import 'package:flutter/material.dart';

// Statefull Widget

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print("wrapper Clicked");
          //   },
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  print("search Clicked");
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print("more Clicked");
                },
                icon: Icon(Icons.more_vert))
          ],
          // flexibleSpace: Icon(
          //   Icons.camera,
          //   color: Colors.white,
          //   size: 30.0,
          // ),
        ),
        body: Container(
          child: Text("Hello World"),
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        // ),
        drawer: Drawer(
          elevation: 16.0,
          child: Column(children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ratheesh"),
              accountEmail: Text("ratheeshofficial.r@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('R'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'X',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(height: 0.1),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            Divider(height: 0.1),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(height: 0.1)
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 16,
          iconSize: 25,
          currentIndex: index,
          backgroundColor: Colors.blue,
          fixedColor: Colors.white,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
        ),
      ),
    );
  }
}
