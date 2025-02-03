import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class listte extends StatefulWidget {


  @override
  State<listte> createState() => _listteState();
}

class _listteState extends State<listte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ভুরুঙ্গামারি অনলাইন সেবা',style: TextStyle(fontSize:25,color: Colors.white,fontWeight:FontWeight.bold,),),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("kdff"),
            leading: Icon(Icons.add_a_photo),
            trailing: IconButton(onPressed: (){}, icon:Lottie.asset('assets/Animation - 1738526789425.json'),),
          ),
        ],
      ),
    );
  }
}
