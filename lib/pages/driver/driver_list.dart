import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/colors.dart';
import '../../dedsign/dimensions.dart';
import '../../dedsign/util/size_util.dart';
import '../../dedsign/widgets/accent_button.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _saveButton(context))
    ]);
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.only(
            left: padding16,
            right: padding16,
            top: padding16,
            bottom: getListBottomPadding(context)),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 8);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: surfaceColor,
              height: 64
          );
        });
  }

  Widget _saveButton(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: padding16, right: padding16, bottom: padding8),
          child: AccentButton(
              title: 'Save',
              onTap: () {}),
        ));
  }
}

