import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';
import 'package:untitled1/dedsign/images.dart';
import 'package:untitled1/pages/vehicle_state/vehicle_state_list.dart';
import '../../dedsign/styles.dart';
class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update vehicle state', style: primaryTextStyle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: surfaceColor,
        leading: IconButton(icon: arrowBackImage, onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Container(color: backgroundColor, child: const VehicleStateList()),
    );
  }
}
