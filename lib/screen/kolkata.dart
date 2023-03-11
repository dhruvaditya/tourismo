import 'package:flutter/material.dart';
import 'package:tourismo/screen/tour_guides.dart';
class Kolkata extends StatelessWidget {
  const Kolkata({Key? key}) : super(key: key);

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
            Text('Welcome to West Bengal',style: TextStyle(fontSize: 15),),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
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
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Container(
                // A fixed-height child.
                 // Yellow
                height: 120.0,
                alignment: Alignment.center,
                child: const Center(
                  child: Text('Places to visit in West Bengal',style:TextStyle(fontSize: 25) ,),
                ),
              ),
              Expanded(
                // A flexible child that will grow to fit the viewport but
                // still be at least as big as necessary to fit its contents.
                  child: new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TourGuide()),
                      );
                    },
                    child: new Container(
                      color: Colors.green, // Red
                      height: 120.0,
                      width: 320.0,
                      alignment: Alignment.center,
                      child: const Text('Victoria Memorial'),

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
    );
  }
}
