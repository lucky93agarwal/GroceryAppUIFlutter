import 'package:flutter/material.dart';


class ThanksForOrderScreen extends StatefulWidget {
  const ThanksForOrderScreen({Key? key}) : super(key: key);

  @override
  State<ThanksForOrderScreen> createState() => _ThanksForOrderScreenState();
}

class _ThanksForOrderScreenState extends State<ThanksForOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(children: [
            Container(
              padding: const EdgeInsets.only(top: 100,left: 100,right: 100,bottom: 50),
              alignment: Alignment.center,
              child:  Image.asset("assets/images/icons/vegetablebag.png"),),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              alignment: Alignment.center,
              child:  Text("Thanks for your order!",textAlign: TextAlign.center,style:
              Theme.of(context).textTheme.headline4),),

            Container(
              padding: const EdgeInsets.only(top: 20,left: 100,right: 100),
              alignment: Alignment.center,
              child:  Text("The order is being packed for shipping",textAlign: TextAlign.center,style:
              Theme.of(context).textTheme.bodyText2),),
          ],),

            Column(children: [

              Container(width: MediaQuery.of(context).size.width,height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xffe9eaff),
                  borderRadius: BorderRadius.circular(30.0),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width:45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                        ),
                        child: Image.asset("assets/images/icons/akroticon.png"),),

                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width:45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                        ),
                        child: Image.asset("assets/images/icons/milkicon.png"),),

                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width:45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                        ),
                        child: Image.asset("assets/images/icons/cheeseicon.png"),),




                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width:45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                        ),
                        child: Image.asset("assets/images/icons/broccoilicon.png"),),

                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        width:45,
                        height: 45,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                        ),
                        child: Image.asset("assets/images/icons/Asparagusicon.png"),),
                    ],),



                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width:45,
                    height: 45,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xff6976dd),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Color(0x99ebf3d0),width: 2.0,),
                    ),
                    child: Text("12",style: TextStyle(color: Colors.white),),),

                ],),),


              Container(width: MediaQuery.of(context).size.width,height: 70,
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color(0xff202e55),
                  borderRadius: BorderRadius.circular(30.0),),
                child: Text("My orders"),),
            ],)

        ],),
      ),
    );
  }
}
