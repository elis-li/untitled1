import 'package:flutter/material.dart';
import 'package:untitled1/pages/vehicle/vehicle_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Kiparo dispatcher",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VehiclePage(),
    );
  }
}