import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';
import 'package:untitled1/dedsign/dimensions.dart';
import 'package:untitled1/pages/vehicle/vehicle_list.dart';


class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispatcher by kiparo.com',
            style: TextStyle(
              color: primaryColor,
              fontSize: fontSize16,
              fontWeight: FontWeight.w500,
            )),
        elevation: 0,
        backgroundColor: surfaceColor,
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
