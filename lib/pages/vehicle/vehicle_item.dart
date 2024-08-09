import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';
import 'package:untitled1/dedsign/dimensions.dart';
import 'package:untitled1/dedsign/images.dart';

import '../../dedsign/styles.dart';

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
                  padding:
                      const EdgeInsets.only(left: padding8, right: padding16),
                  child: Row(
                    children: <Widget>[
                      vehicleMotorcycleImage,
                      _title(),
                      _state()
                    ],
                  )),
            )));
  }
}

Widget _title() {
  return Expanded(
      child: Padding(
    padding: const EdgeInsets.only(left: padding6),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('BMW',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle),
          //if (false)[
          //Text('No driver',
          // style: body3TextStyle,
          // ),]
          // else
          RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(children: <TextSpan>[
                TextSpan(text: 'Driver: ', style: body3TextStyle),
                TextSpan(text: 'Paul', style: body5TextStyle)
              ]))
        ]),
  ));
}

Widget _state() {
  return InkWell(
      onTap: () {},
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            statePickupImage,
            const Text(
              'pickup',
              style: body4TextStyle,
            )
          ]));
}
