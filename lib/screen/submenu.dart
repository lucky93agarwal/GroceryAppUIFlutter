import 'package:flutter/material.dart';
import 'package:grocery/model/ProductDataModel.dart';
import 'package:grocery/screen/thanskfororder.dart';
import 'package:grocery/utils/next_screen.dart';

class SubMenuScreen extends StatefulWidget {
  String? title;
  int? categoryId;
  String? url;
  SubMenuScreen({Key? key,required this.title,required this.categoryId,required this.url}) : super(key: key);

  @override
  State<SubMenuScreen> createState() => _SubMenuScreenState();
}

class _SubMenuScreenState extends State<SubMenuScreen> {
  List<ProductItem> items = [];
  ScrollController scrollController = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.addAll(ProductDataModel.productitems);
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
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
                      Text(widget.title!,style:
                      Theme.of(context).textTheme.headline4),
                    ],),
                ),

                    Positioned(right:-0,bottom:20,child: Image.asset(widget.url!,height: 250,),)




              ],),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 5,right: 15),
              child: Stack(
                children: [
                  GridView.count(
                      crossAxisCount: 2,
                      controller: scrollController,
                      shrinkWrap: true,
                      childAspectRatio: (itemWidth / itemHeight),
                      scrollDirection: Axis.vertical,
                      children: new List<Widget>.generate(
                          items.length, (index) {



                        ProductItem itemsnew = items[index];


                        return new InkWell(
                            onTap: () {

                              nextScreen(context, ThanksForOrderScreen());

                            },
                            child:  Container(
                              margin: const EdgeInsets.only(left: 5,top: 5),
                              width:MediaQuery.of(context).size.width*0.45,
                              height: 240,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Color(0xfff2f2f2),width: 2.0,),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 25),
                                    child: Image.asset(itemsnew.image,height: 130,),),

//meaticon
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8,left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(itemsnew.title,style:
                                        Theme.of(context).textTheme.headline1),

                                        Text(itemsnew.subtitle,style:
                                        Theme.of(context).textTheme.subtitle2),


                                        Container(
                                          margin: const EdgeInsets.only(bottom: 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(itemsnew.price,style:
                                                  Theme.of(context).textTheme.headline1),

                                                  Text(" "+itemsnew.by,style:
                                                  Theme.of(context).textTheme.subtitle2),
                                                ],),
                                              Container(
                                                margin: const EdgeInsets.only(right: 15),
                                                width:40,
                                                height: 40,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(7),
                                                decoration: BoxDecoration(
                                                  color: Color(0xffdcdcdc),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                child: Icon(Icons.add,color: Colors.white,size: 16,),),
                                            ],
                                          ),),
                                      ],
                                    ),),





                                ],
                              ),));
                      })),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10,),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(width: 65,height: 70,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color: Color(0xff202e55),
                            borderRadius: BorderRadius.circular(25.0),),
                        child: Image.asset("assets/images/icons/filter.png"),),
                      ],
                    ),

                  ],
                ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
