import 'package:flutter/material.dart';
import 'package:laptopmanagement/Drawer/settings%20page.dart';
import '../screens/botton nav.dart';
void main(){runApp(MaterialApp(home: DrawerEx(),));}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      //Theme(
      //data: Theme.of(context).copyWith(canvasColor: Colors.green),
      // child:
      //endDrawer:
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                //color: Colors.purple
                  image: DecorationImage(
                      fit: BoxFit.fill,

                      image: AssetImage("assets/images/img_2.png",),)),
              accountName: const Text("My Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text("myname@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/profile1.png"),
              //appBar: AppBar(title: Text("Dell"),),otherAccountsPictures: [Image.asset("assets/icons/apple.png")],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontSize: 18),),
              onTap: () {}),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings",style: TextStyle(fontSize: 18),),
              onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsPage())),
            ),




          ],
        ),
      ), body: BottomNavBar(),
      // ),
    );
  }
}