import 'package:flutter/material.dart';
import 'package:grocery/model/CategoryDataModel.dart';
import 'package:grocery/screen/submenu.dart';
import 'package:grocery/utils/next_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryItem> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.addAll(CategoryDataModel.categoryitems);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          SizedBox(width: 10,),
          Image.asset("assets/images/icons/iconappicon.png",width: 30,height: 30,),
          SizedBox(width: 10,),
          Text("Grocery",style:
          Theme.of(context).textTheme.headline3),
          Text("Market",style:
          Theme.of(context).textTheme.subtitle1)
        ],),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset("assets/images/icons/ic_search.png",width: 20,height: 20,),),
          SizedBox(width: 20,)
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 15,),
                Container(width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(color: Color(0x99ebf3d0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shopping list",style:
                            Theme.of(context).textTheme.headline2),


                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      width:40,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Color(0xffdbe9b1),
                                          borderRadius: BorderRadius.circular(15.0)
                                      ),
                                      child: Text("4",style:
                                      Theme.of(context).textTheme.headline2),),
                                    Container(
                                      margin: const EdgeInsets.only(top: 17,left: 33),
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
                                      margin: const EdgeInsets.only(top: 17,left: 70),
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
                                      margin: const EdgeInsets.only(top: 17,left: 105),
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
                                      margin: const EdgeInsets.only(top: 20,left: 153),
                                      width:40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Color(0xff222f56),
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      child: Icon(Icons.add,color: Colors.white,size: 16,),),
                                  ],),


                                ],),
                            )
                          ],),
                      ),
                      Container(
                        width:100,
                        height: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/icons/grocerybagsicon.png"),
                            fit: BoxFit.cover,
                          ),
                        ),),
                    ],),),
                SizedBox(height: 25,),
                Row(children: [
                  SizedBox(width: 40,),
                  Text("Categories",style:
                  Theme.of(context).textTheme.headline4),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff202e55),size: 15,)
                ],),
                Container(height: 150,
                  margin: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        CategoryItem itemsnew = items[index];
                    return InkWell(onTap: (){
                      nextScreen(context, SubMenuScreen(title: itemsnew.title,categoryId: itemsnew.id,url: itemsnew.status,));

                    },child: Container(
                      margin: const EdgeInsets.only(top: 20,left: 5),
                      width:160,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xfffde3c0),
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: const EdgeInsets.only(left: 25),
                            child: Image.asset(itemsnew.image,height: 90,),),

//meaticon
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(bottom: 15,left: 15),
                            child: Text(itemsnew.title,style:
                            Theme.of(context).textTheme.bodyText1),)

                        ],
                      ),),);
                  })
                  ),


                SizedBox(height: 25,),
                Row(children: [
                  SizedBox(width: 40,),
                  Text("Usually buy",style:
                  Theme.of(context).textTheme.headline4),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff202e55),size: 15,)
                ],),

                Container(height: 240,
                  margin: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  child: ListView(shrinkWrap: true,scrollDirection: Axis.horizontal,children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
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
                            child: Image.asset("assets/images/icons/salmonfilleticon.png",height: 130,),),

//meaticon
                          Container(
                            margin: const EdgeInsets.only(bottom: 8,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Salmon Fillet",style:
                                Theme.of(context).textTheme.headline1),

                                Text("1kg / 1.8\$",style:
                                Theme.of(context).textTheme.subtitle2),


                                Container(
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("0.9\$",style:
                                          Theme.of(context).textTheme.headline1),

                                          Text(" / 500gm",style:
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
                      ),),

                    Container(
                      margin: const EdgeInsets.only(top: 20,left: 5),
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
                            child: Image.asset("assets/images/icons/Asparagusicon.png",height: 130,),),

//meaticon
                          Container(
                            margin: const EdgeInsets.only(bottom: 8,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Asparagus",style:
                                Theme.of(context).textTheme.headline1),

                                Text("1kg / 1.8\$",style:
                                Theme.of(context).textTheme.subtitle2),


                                Container(
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("0.9\$",style:
                                          Theme.of(context).textTheme.headline1),

                                          Text(" / 500gm",style:
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
                      ),),


                    Container(
                      margin: const EdgeInsets.only(top: 20,left: 5),
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
                            child: Image.asset("assets/images/icons/broccoilicon.png",height: 130,),),

//meaticon
                          Container(
                            margin: const EdgeInsets.only(bottom: 8,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Broccoil",style:
                                Theme.of(context).textTheme.headline1),

                                Text("1kg / 1.8\$",style:
                                Theme.of(context).textTheme.subtitle2),


                                Container(
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("0.9\$",style:
                                          Theme.of(context).textTheme.headline1),

                                          Text(" / 500gm",style:
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
                      ),),



                  ],),),





                SizedBox(height: 25,),
                Row(children: [
                  SizedBox(width: 40,),
                  Text("Recommended",style:
                  Theme.of(context).textTheme.headline4),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Color(0xff202e55),size: 15,)
                ],),
              ],
            ),
          
            // Container(width: MediaQuery.of(context).size.width,
            //   margin: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //     Image.asset("assets/images/icons/homeicon.png",height: 25),
            //
            //       Image.asset("assets/images/icons/cafeicon.png",height: 25),
            //
            //       Container(
            //         height: 70,
            //         width: 60,
            //         padding: const EdgeInsets.all(15),
            //         decoration:BoxDecoration(color:Color(0xff6976df),   borderRadius: BorderRadius.circular(25.0),),
            //         child: Image.asset("assets/images/icons/bucketicon.png",height: 20,width: 20,),),
            //
            //
            //       Image.asset("assets/images/icons/noteicon.png",height: 25),
            //
            //       InkWell(onTap: (){
            //
            //       },child: Image.asset("assets/images/icons/usericon.png",height: 25),)
            //
            //   ],),)
        ],),
      ),
    );
  }
}
