
import 'package:flutter/material.dart';
import '../../dedsign/dimensions.dart';
import '../../dedsign/widgets/accent_button.dart';
import 'vehicle_item.dart';

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
        padding: EdgeInsets.only (left: padding16, right: padding16, top: padding16),
        separatorBuilder: (BuildContext context, int index){
          return const SizedBox(height: 8);

        },
        itemBuilder: (BuildContext context, int index){
          return const VehicleItem();
        }
    );
  }
  Widget _updateButton(){
    return AccentButton(title: 'Update' , onTap: (){} );
  }

}