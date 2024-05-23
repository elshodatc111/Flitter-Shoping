import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home:homePage()
    ));


class homePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return  Scaffold(
        backgroundColor: Colors.white38,
        appBar: AppBar(
          leading: IconButton(onPressed: () {print("Click Button");},icon: Icon(Icons.menu),color: Colors.white,),
          backgroundColor: Colors.blueAccent,
          centerTitle: false,
          title: Text(
              "App Name",
              style: TextStyle(
                color: Colors.white
              ),
          ),
          actions:[
            TextButton(
              onPressed: (){
                print("Create Location");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.orangeAccent
                    ),
                    Text(
                        "Yetkazish manzili",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        )
                    ),
                  ]
              ),
            )
          ]
        ),
        body: Center(
          child:  Column(
              children: [
                  TextButton(
                  onPressed: (){print("Product Show 1");},
                    child: Container(
                      width: media.size.width*0.90,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      //height: 100,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0),),
                              child: Image.asset('assets/01.jpg',width: media.size.width*0.90,height: media.size.height*0.25,fit:BoxFit.fill                              ),
                            ),
                            Container(
                              child: Center(child: Text('Delay Water',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black)),),
                            ),
                            Container(
                                child: Table(
                                  border: TableBorder.all(color: Colors.white),
                                  children: [
                                    TableRow(children: [
                                      Center(child: Text('Ish vaqti',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),),
                                      Center(child:  Text('Taxminiy yetqazish',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),),
                                      Center(child:  Text('Naqxi',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),)]),
                                    ],

                                ),
                            )
                          ]
                        )
                      )
                    ),
                  ),
                  TextButton(
                    onPressed: (){print("Product Show 2");},
                    child: Container(
                        width: media.size.width*0.90,
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        //height: 100,
                        child: Center(
                            child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0),topRight: Radius.circular(8.0),),
                                    child: Image.asset('assets/01.jpg',width: media.size.width*0.90,height: media.size.height*0.25,fit:BoxFit.fill                              ),
                                  ),
                                  Container(
                                    child: Center(child: Text('Delay Water',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: Colors.black)),),
                                  ),
                                  Container(
                                    child: Table(
                                      border: TableBorder.all(color: Colors.white),
                                      children: [
                                        TableRow(children: [
                                          Center(child: Text('Ish vaqti',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),),
                                          Center(child:  Text('Taxminiy yetqazish',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),),
                                          Center(child:  Text('Naqxi',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.black),),)]),
                                      ],
                                    ),
                                  )
                                ]
                            )
                        )
                    ),
                  ),
                ],

              )
          )
        );
  }

}