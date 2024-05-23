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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              print("working");
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Products', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Colors.black12,
        body: Center(
          child:  Column(children: [
            Container(
              color: Colors.white,
              width: media.size.width*0.92,
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(
                  "+ Add Product",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black12,
                )
              ),
              alignment: Alignment.center,

            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: media.size.width*0.44,
                    color: Colors.amberAccent,
                    margin: EdgeInsets.fromLTRB(media.size.width*0.04, 5, 0, 0),
                    padding: EdgeInsets.fromLTRB(media.size.width*0.01, media.size.width*0.05, media.size.width*0.01, media.size.width*0.05),
                  ),
                  Container(
                    width: media.size.width*0.44,
                    color: Colors.amberAccent,
                    margin: EdgeInsets.fromLTRB(media.size.width*0.04, 5, 0, 0),
                    padding: EdgeInsets.fromLTRB(media.size.width*0.01,
                        media.size.width*0.05,
                        media.size.width*0.01,
                        media.size.width*0.05),
                  ),
                ],
              ),
            )
          ]),
        )
    );
  }

}