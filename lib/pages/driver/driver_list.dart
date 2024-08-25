import 'package:flutter/material.dart';
import 'package:untitled1/dedsign/images.dart';
import '../../dedsign/dimensions.dart';
import '../../dedsign/util/size_util.dart';
import '../../dedsign/widgets/accent_button.dart';
import '../../dedsign/widgets/selectable_item.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriverIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(),
      Align(alignment: Alignment.bottomCenter, child: _saveButton())
    ]);
  }

  Widget _list() {
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
          final bool isSelected = _selectedDriverIndex == index;
          return SelectableItem(
              image: accountCircleImage,
              leftPadding: padding16,
              onTap: () {
    setState(() {
    _selectedDriverIndex = index})}
              title: 'Paul',
              isSelected: isSelected)
              driverName: 'Paul',
              isSelected: isSelected,
              onTap: () {
                setState(() {
                  _selectedDriverIndex = index;
                });
              });
        });
  }

  Widget _saveButton() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(title: 'Save', onTap: () {}),
    ));
  }
}
