import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: ListData(),
  ),
  );
}

class ListData extends StatefulWidget {
  const ListData({super.key});
  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<String> name = ['ainsia','shabbir','mustafa','batool'];
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Data'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Text(
                name[count],
                style: TextStyle(
                    color: Colors.teal[300],
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                )
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(count == 3){count=0;}
                    else {count +=1;}
                  });
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
                child: Text(
                    "Press Me",
                    style: TextStyle(
                        color: Colors.teal[100],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    )
                ),
            ),
        ],
      ),

      // body: Column(
      //   children: [
      //     Text(name[3],style: TextStyle(color: Colors.teal[300],fontSize: 30.0,fontWeight: FontWeight.bold)),
      //     Text(name[2],style: TextStyle(color: Colors.teal[300],fontSize: 30.0,fontWeight: FontWeight.bold)),
      //     Text(name[1],style: TextStyle(color: Colors.teal[300],fontSize: 30.0,fontWeight: FontWeight.bold)),
      //   ],
        // children: name.map((name)=>Text(name, style: TextStyle(color: Colors.teal[300],fontSize: 30.0,fontWeight: FontWeight.bold),)).toList(),

      // ),
    );
  }
}





