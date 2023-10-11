import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar:  AppBar(
        title: Text("Login Profile"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0,0.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                //backgroundColor: Colors.cyanAccent,
                 //backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/168/827/png-clipart-computer-icons-user-profile-avatar-profile-woman-desktop-wallpaper-thumbnail.png",),
                backgroundImage: AssetImage("image/image1.jfif"),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 76.0,
              color:  Colors.grey[350],
            ),
            Row(
              children: [
                Text("Name: ",style: TextStyle(color: Colors.grey[400], fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
                Text("Ainsia Shabbir ",style: TextStyle(color: Colors.lightGreenAccent, fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Text("Id: ",style: TextStyle(color: Colors.grey[400], fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
                Text("Ain_Sha ",style: TextStyle(color: Colors.lightGreenAccent, fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(Icons.email,color: Colors.grey[400],),
                SizedBox(width: 2.0,),
                Text("Email: ",style: TextStyle(color: Colors.grey[400], fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
                Text("Ain_Sha@flutterapp.com",style: TextStyle(color: Colors.lightGreenAccent, fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Text("Login Attempts: ",style: TextStyle(color: Colors.grey[400], fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
                Text("$level",style: TextStyle(color: Colors.lightGreenAccent, fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          level =0;
                        });
                    },
                      child: Icon(
                        Icons.refresh,
                        color: Colors.grey[800],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreenAccent,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(18.0)
                      ),
                    ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      level +=1;
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(18.0)
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){
      //       setState(() {
      //         level +=1;
      //       });
      //     },
      //     child: Icon(
      //         Icons.add,
      //       color: Colors.grey[800],
      //     ),
      //   backgroundColor: Colors.lightGreenAccent,
      // ),
    );
  }
}


