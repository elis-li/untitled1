import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';
import 'package:untitled1/dedsign/dimensions.dart';
import 'package:untitled1/dedsign/images.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
    child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius8),
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 16),
              child: Row(
                children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
              )),
        )));
  }
}

Widget _title() {
  return Column (
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      Text('BMW', style: TextStyle(
        color: secondaryColor,
        fontSize: fontSize14,
        fontWeight: FontWeight.w600
      )),
      Text('No driver', style: TextStyle(
          color: secondaryVariantColor,
          fontSize: fontSize14,
          fontWeight: FontWeight.w400
      )),

    ],
  );
}

Widget _state() {
  return Container();
}
