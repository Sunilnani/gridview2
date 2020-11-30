import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List <String> Texts = ["first" , "Second","third" , "four","five" , "six","seven","eight"];
  List <Color> colors = [Colors.orangeAccent ,Colors.yellow ,Colors.red ,Colors.green,Colors.white,Colors.deepOrange,Colors.redAccent,Colors.cyanAccent,];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text("Grid View Example"),
            ),
            body: Container(
              child:SingleChildScrollView(
                child: Column(
                  children: [

                    GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,crossAxisSpacing:7, mainAxisSpacing: 7,childAspectRatio: 2),
                        itemBuilder: (context, index) {
                          return Grid(
                            color:colors[index] ,
                            text: Texts[index],);
                        }
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child:
                        RaisedButton(
                          child: Text(' Change GridView Mode To ListView '),
                          textColor: Colors.white,
                          color: Colors.red,
                          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        )
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}

class Grid extends StatefulWidget {
  Grid({  this.color , this.text});
  final String text;
  final Color color;
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      color: widget.color,
      child: Center(child: Text(widget.text)),

    );
  }
}