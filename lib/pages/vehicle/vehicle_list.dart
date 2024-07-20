import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget{
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(),
        _updateButton()

      ]);
  }
  Widget _list(){
    return ListView.separated(
        itemCount: 15,
        separatorBuilder: (BuildContext context, int index){
          return const SizedBox(height: 8);

        },
        itemBuilder: itemBuilder
    );
  }
  Widget _updateButton(){
    return Container();
  }

}