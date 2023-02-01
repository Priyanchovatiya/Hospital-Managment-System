import 'package:flutter/material.dart';
import 'package:hmsadmin/constant/style.dart';
import 'package:hmsadmin/routing/routes.dart';
import 'package:hmsadmin/widget/customeText.dart';
import 'package:hovering/hovering.dart';

class HorizontalMenuItem extends StatefulWidget {
  final String itemName;
 final int id;
  final IconData icon;
  final bool active;
  const HorizontalMenuItem({Key? key ,required this.itemName , required this.icon, required this.active, required this.id}) : super(key: key);

  @override
  State<HorizontalMenuItem> createState() => _HorizontalMenuItemState();
}

class _HorizontalMenuItemState extends State<HorizontalMenuItem> {
  @override
  Widget build(BuildContext context) {

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
          //  padding: const EdgeInsets.only(top: 10.0 , bottom: 10.0, right: 10.0),
          color: dark.withOpacity(0.2),
          child: Row(
            children: [
              Container(
                width: 5.0,
                color: activeColor,
                height: 42,
              ),
              Padding(
                padding:const EdgeInsets.only(top: 10.0 , bottom: 10.0, right: 10.0),
                child: Row(
                  children: [
                    const SizedBox(width: 16,),
                    Icon(widget.icon,color: light,),
                    const SizedBox(width: 16,),
                    CustomText(weight: FontWeight.bold, size: 16,   text: widget.itemName, colour: light)
                  ],
                ),
              ),

            ],
          ),
        ),
        onHover: (val) {

        },
        child: Row(
          children: [
            widget.active ?  Container(
              width: 4.0,
              color: activeColor,
              height: 42,
            ) : Container(
              width: 5.0,
            ),

            Padding(
              padding:const EdgeInsets.only(top: 10.0 , bottom: 10.0, right: 10.0),
              child: Row(
                children: [
                  const SizedBox(width: 16,),
                  Icon(widget.icon,color:  widget.active ? dark:lightGrey,),
                  const SizedBox(width: 16,),
                  CustomText(weight: FontWeight.bold, size: 16,   text: widget.itemName, colour: widget.active ? dark:lightGrey)
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
