import 'package:flutter/material.dart';
import 'package:tourismo/screen/kolkata.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Icon(
          //   Icons.menu,
          //   color: Colors.greenAccent,
          //   size: 30,
          // ),
          Text('Tourismo'),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('data:image/png;base64,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'),
            ),
          ),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Text('Have a Wonderful Journey Ahead'),
            ),
            ListTile(
              title: const Text('Notification'),
              hoverColor: Colors.blue,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Dark Mode'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Language'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(

              title: const Text('Help Center'),


              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Invite Friends'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            // minHeight: viewportConstraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Container(
                  // A fixed-height child.
                  color: Colors.tealAccent, // Yellow
                  height: 120.0,
                  alignment: Alignment.center,
                  child: const Center(
                    child: Text('Welcome to our App select the state where you are now',style:TextStyle(fontSize: 15) ,),
                  ),
                ),
                Spacer(flex: 1,),
                Expanded(
                  // A flexible child that will grow to fit the viewport but
                  // still be at least as big as necessary to fit its contents.
                  child: new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Kolkata()),
                      );
                    },
                    child: new Container(
                      color: Colors.redAccent, // Red
                      height: 120.0,
                      width: 320.0,
                      alignment: Alignment.center,
                      child: const Text('West Bengal'),

                    ),
                  )

                ),
                Expanded(child: SizedBox.shrink()),
                Expanded(child: Container(
                  color: Colors.blueGrey,
                  height: 120.0,
                  width: 320.0,
                  alignment: Alignment.center,
                  child: const Text('Bihar'),
                )),
                Spacer(),
                Expanded(child: Container(
                  color: Colors.cyanAccent,
                  height: 120.0,
                  width: 320.0,
                  alignment: Alignment.center,
                  child: const Text('Telangana'),
                )),
                Spacer(),
                Expanded(child: Container(
                  color: Colors.blueGrey,
                  height: 120.0,
                  width: 320.0,
                  alignment: Alignment.center,
                  child: const Text('Delhi'),
                )),
                Spacer(),
                Expanded(child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.blueGrey,
                  height: 120.0,
                  width: 320.0,
                  alignment: Alignment.center,
                  child: const Text('Bihar'),
                )),
                Spacer(),
                Expanded(child: Container(
                  color: Colors.blueGrey,
                  height: 120.0,
                  width: 320.0,
                  alignment: Alignment.center,
                  child: const Text('Bihar'),
                ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
