//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(myapp());
// }
// class myapp extends StatefulWidget {
//   const myapp({super.key});
//
//   @override
//   State<myapp> createState() => _myappState();
// }
//
// class _myappState extends State<myapp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: first(),);
//   }
// }
// class first extends StatefulWidget {
//
//
//   const first({super.key});
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   List department=["ece","it","cse","eee"];
//   bool? isselect=false;
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(appBar: AppBar(),
//     body: Column(
//       mainAxisAlignment:MainAxisAlignment.center,
//       children: [
//         CheckboxMenuButton(
//             value: isselect, onChanged: (val){
//           setState(() {
//             isselect=val;
//           });
//         }, child: Text("option")),
//         DropdownMenu(hintText:"Branch",
//             dropdownMenuEntries:department.map<DropdownMenuEntry<String>>((val) {
//           return DropdownMenuEntry(value: val, label: val);
//         }).toList() )
//
//
//     ],),);
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: first(),);
  }
}
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
 final key=GlobalKey();
  List branch=["ece","eee"];
  bool? isselect=false;
  bool ison=false;
 bool ison1=false;
 bool ison2=false;
 bool ison3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Column( mainAxisAlignment: MainAxisAlignment.start, children: [
         /* DropdownMenu(hintText: "Branch",
              dropdownMenuEntries:branch.map<DropdownMenuEntry<String>>((val) {
            return DropdownMenuEntry(value: val, label: val );
          }) .toList()),*/
        //Text("state:$ison"),
        Column(
          children: [
            Row(
              children: [
                Icon(Icons.lightbulb,size: 32,color: Colors.yellow



                  ,),
                SizedBox(width: 50,),
                Text("Android Switch"),
                SizedBox(width: 50,),
                Switch(
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.green,
                    inactiveTrackColor: Colors.yellow,

                    value:ison , onChanged: (val){
                  setState(() {
                    ison=val;
                  });
                }),
              ],
            ),
            Row(
              children: [
                Icon(Icons.lightbulb,size: 32,color: Colors.yellow,),
                SizedBox(width: 50,),
                Text("ios Switch"),
                SizedBox(width: 50,),
                CupertinoSwitch(activeColor: Colors.pinkAccent,
                    thumbColor: Colors.black,
                    value: ison3, onChanged: (val){
                  setState(() {
                    ison3=val;
                  });
    })

                ,
              ],
            ),

            Row(
              children: [
                Icon(Icons.backup),
                SizedBox(width: 50,),
                Text("Adaptive Switch"),
                SizedBox(width: 50,),
                Switch(
                    activeColor: Colors.orangeAccent,
                    inactiveThumbColor: Colors.red,
                    inactiveTrackColor: Colors.red,

                    value:ison2 , onChanged: (val){
                  setState(() {
                    ison2=val;
                  });
                }),
              ],
            ),
            Row(
              children: [
                Icon(Icons.backup),
                SizedBox(width: 50,),
                Text("Image switch"),
                SizedBox(width: 50,),
                Switch(
                    activeColor: Colors.grey,
                    inactiveThumbColor: Colors.green,
                    inactiveTrackColor: Colors.yellow,
                    inactiveThumbImage: NetworkImage("data:image/png;base64,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")
                    ,activeThumbImage: NetworkImage("data:image/png;base64,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"),

                    value:ison1 , onChanged: (val){
                  setState(() {
                    ison1=val;
                  });
                }),
              ],
            ),
          ],
        ),
       // IconButton(onPressed: (){}, icon: Icon(Icons.search))

        ],
      ),
    );
  }
}
