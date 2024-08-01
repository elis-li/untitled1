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
  return Padding(
    padding: const EdgeInsets.only(left: padding6),
  child: Column (
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Text('BMW', style: TextStyle(
        color: secondaryColor,
        fontSize: fontSize14,
        fontWeight: FontWeight.w600
      )),
      Text('No driver', style: TextStyle(
          color: secondaryVariantColor,
          fontSize: fontSize14,
          fontWeight: FontWeight.w400
      )),
      RichText(text: const TextSpan(
        style: TextStyle(fontSize: fontSize14),
        children: <TextSpan>[
          TextSpan(text: 'Driver', style: TextStyle(
            color: secondaryVariantColor,
            fontWeight: FontWeight.w400
          )),
          TextSpan(text: 'Paul', style: TextStyle(
            color: secondaryColor,
            fontWeight: FontWeight.w600
          ))

        ]
      ))

    ]),
  );
}

Widget _state() {
  return Container();
}
