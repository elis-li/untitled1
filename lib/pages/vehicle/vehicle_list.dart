import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';

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
        padding: EdgeInsets.only (left: 16, right: 16, top: 16),
        separatorBuilder: (BuildContext context, int index){
          return const SizedBox(height: 8);

        },
        itemBuilder: (BuildContext context, int index){
          return Container(height: 64, color: surfaceColor);
        }
    );
  }
  Widget _updateButton(){
    return Container();
  }

}