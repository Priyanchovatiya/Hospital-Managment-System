import 'package:flutter/material.dart';
import 'package:hmsadmin/widget/horizantal_items.dart';
import 'package:hmsadmin/widget/vertical_items.dart';

import '../helpers/responsive_widget.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final int id;
  final IconData icon;
  final bool active;
  const SideMenuItem({Key? key , required this.id,required this.itemName , required this.icon, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomSize(context)){
      return VerticalMenuItems(itemName: itemName, id: id,icon: icon,active: active,);
    }else{
      return HorizontalMenuItem(itemName: itemName, id: id,icon: icon,active: active,);
    }
  }
}
