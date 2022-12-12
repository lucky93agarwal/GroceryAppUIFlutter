import 'package:flutter/material.dart';

class SubMenuScreen extends StatefulWidget {
  const SubMenuScreen({Key? key}) : super(key: key);

  @override
  State<SubMenuScreen> createState() => _SubMenuScreenState();
}

class _SubMenuScreenState extends State<SubMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                  color: Color(0xffebf3d0),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Stack(

                children: [
                Container(
                  padding: const EdgeInsets.only(left: 30,top: 40,bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back,color: Colors.black,),
                      Text("Vegetables",style:
                      Theme.of(context).textTheme.headline4),
                    ],),
                ),

                    Positioned(right:-100,bottom:20,child: Image.asset("assets/images/icons/vegetablesicon.png",height: 250,),)




              ],),
            )
          ],
        ),
      ),
    );
  }
}
