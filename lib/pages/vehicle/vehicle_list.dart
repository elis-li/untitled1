import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/dialog/error_dialog.dart';
import '../../dedsign/dimensions.dart';
import '../../dedsign/widgets/accent_button.dart';
import 'vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _updateButton(context))
    ]);
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + height8) * 2 + height40;

    return ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.only(
            left: padding16,
            right: padding16,
            top: padding16,
            bottom: bottomPadding),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 8);
        },
        itemBuilder: (BuildContext context, int index) {
          return const VehicleItem();
        });
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(
          title: 'Update',
          onTap: () {
            _showErrorDialog(context);
          }),
    ));
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ErrorDialog(
              description: 'Server is unavailable, Please try again later.');
        });
  }
}
