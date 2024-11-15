import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BloodApp());
}

class BloodApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Need Blood'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(Icons.bloodtype_outlined, size: 90, color: Colors.red,),
              radius: 80,
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 10,),
            Text('Donote Blood', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}