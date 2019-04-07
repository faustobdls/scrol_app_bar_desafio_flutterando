import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {

  final ScrollController scrollController;

  CustomAppBar({Key key, @required this.scrollController}) : super(key: key);


  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 80.0,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: widget.scrollController,
            builder: (context, child) {

              var maxSize = widget.scrollController.position?.maxScrollExtent ?? 1;
              var currentSize = widget.scrollController.offset ?? 0;
              
              var total = maxSize - currentSize;
              
              return Row(
                children: <Widget>[
                  Expanded(
                    flex: currentSize.round(),
                    child: Container(
                      color: Colors.grey[800],
                    ),
                  ),
                  Expanded(
                    flex: total.round(),
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5.0),
            alignment: Alignment.bottomCenter,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back), color: Colors.white, onPressed: (){},),
                Container(
                  width: 15,
                  height: 0,
                ),
                Text("Medium", style: TextStyle(color: Colors.white),),
                Spacer(),
                Text("Aa", style: TextStyle(color: Colors.white),),
                IconButton(icon: Icon(Icons.reply), color: Colors.white, onPressed: (){},),
                
              ],
            ),
          )
        ],
      )
    );
  }
}