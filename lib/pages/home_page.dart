
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatelessWidget {
  
    const HomePage({Key? key}) : super(key:key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _astroImageWidget(),
    );
  }


  Widget _pageTitle(){
    return Text("#Go Moon");
  }

  Widget _astroImageWidget(){
    return  Container(
        decoration: const BoxDecoration(
          image: DecorationImage( 
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.fill,
            ),
        ),
      ),
  }
}