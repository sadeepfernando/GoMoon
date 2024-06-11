
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatelessWidget {
  
    const HomePage({Key? key}) : super(key:key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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

    ),);
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