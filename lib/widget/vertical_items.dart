import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/widget/customeText.dart';
import 'package:hovering/hovering.dart';

import '../routing/routes.dart';


class VerticalMenuItems extends StatefulWidget {
  final String itemName;
  final int id;
  final IconData icon;
  final bool active;
  const VerticalMenuItems({Key? key, required this.id,required this.itemName , required this.icon, required this.active}) : super(key: key);

  @override
  State<VerticalMenuItems> createState() => _VerticalMenuItemsState();
}

class _VerticalMenuItemsState extends State<VerticalMenuItems> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          if(widget.id == 1){
            currentPage = DrawerSections.overViewPage;
          }else if(widget.id == 2){
            currentPage = DrawerSections.patientPage;
          }
        });
      },
      child: HoverWidget(
        hoverChild: AnimatedContainer(
          duration: const Duration(milliseconds: 200),

          color: dark.withOpacity(0.2),
          child: Row(
            children: [
              Container(
                width: 5.0,
                color: activeColor,
                height: 54,
              ),
              // const SizedBox(width: 16,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0 , bottom: 10.0, right: 10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget.icon,color: light,),
                      const SizedBox(width: 16,),
                      CustomText(weight: FontWeight.bold, size: 16,   text:widget.itemName, colour: light)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        onHover: (val) {

        },
        child: Container(

          child: Row(
            children: [
              widget.active ?  Container(
                width: 5.0,
                color: activeColor,
                height: 49,
              ) : Container(
                width: 5.0,
              ),

              //const SizedBox(width: 16,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0 , bottom: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(widget.icon,color:  widget.active ? dark:lightGrey,),
                      const SizedBox(width: 16,),
                      CustomText(weight: FontWeight.bold, size: 16,   text: widget.itemName, colour: widget.active ? dark:lightGrey)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
