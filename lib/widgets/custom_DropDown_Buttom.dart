import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Custondropdownbuttom extends StatelessWidget{

  List<String> values;
   double width;

  Custondropdownbuttom({super.key, required this.values,required this.width});


  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      //Container decoration
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      decoration: BoxDecoration(
          color:const Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10)),

      child: DropdownButton(
        //Styling the dropdown button
        underline: Container(),
        value: values.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),

        onChanged: (_) {},
        items: values.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

}