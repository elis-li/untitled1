import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import '../dimensions.dart';
import '../images.dart';
import '../styles.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final String title;
  final bool isSelected;
  final Function() onTap;

  const SelectableItem(
      {super.key,
      required this.image,
      required this.leftPadding,
      required this.onTap,
      required this.title,
      required this.isSelected});

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
              onTap: onTap,
              child: Padding(
                  padding:
                       EdgeInsets.only(left: leftPadding, right: padding16),
                  child: Row(
                    children: <Widget>[
                      image,
                      const SizedBox(height: width16),
                      Expanded(
                          child: Text(title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: body2TextStyle)),
                      const SizedBox(height: width16),
                      if (isSelected) checkImage
                    ],
                  )),
            )));
  }
}
