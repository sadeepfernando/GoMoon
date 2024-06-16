import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_DropDown_Buttom.dart';

class HomePage extends StatelessWidget {
  late double _pageHeight, _pagewidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _pageHeight = MediaQuery.of(context).size.height;
    _pagewidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: Container(
      height: _pageHeight,
      width: _pagewidth,
      padding: EdgeInsets.symmetric(horizontal: _pagewidth * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_pageTitle(), _bookRideWidget()],
      ),
    )));
  }

  Widget _pageTitle() {
    return const Text(
      "#Go Moon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _pageHeight * 0.25,
      child: Column(
        //Colunm decorations
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersDestinationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return Custondropdownbuttom(
        values: const ['SSF Web Station', 'BUAC Web Station'],
        width: _pagewidth);
  }

  Widget _travellersDestinationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Custondropdownbuttom(
            values: const ['1', '2', '3', '4'], width: _pagewidth * 0.40),
        Custondropdownbuttom(
            values: const ['Economy', 'Private', 'Business', '1 st Class'],
            width: _pagewidth * 0.40)
      ],
    );
  }

  Widget _rideButton(){
    return Container(
      width: _pagewidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
        ),

      child: MaterialButton(onPressed: (){},
       child: const Text(
        "Book Ride !",
        style: TextStyle(
          color: Colors.black,),
        )
        ),
    );
  }
}
