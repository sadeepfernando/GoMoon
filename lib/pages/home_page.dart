
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatelessWidget {

  late double _pageHeight, _pagewidth;
  
     HomePage({Key? key}) : super(key:key);

    @override
  Widget build(BuildContext context) {

    _pageHeight = MediaQuery.of(context).size.height;
    _pagewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _pageHeight,
          width: _pagewidth,
          padding: EdgeInsets.symmetric(horizontal: _pagewidth*0.08),
          child: _pageTitle() ,
          )
        )
    );
  }


  Widget _pageTitle(){
    return const Text("#Go Moon",style: TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontWeight: FontWeight.w700,

    ),
    );
  }

  Widget _astroImageWidget(){
    return  Container(
        decoration: const BoxDecoration(
          image: DecorationImage( 
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.fill,
            ),
        ),
      );
  }
}