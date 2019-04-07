import 'package:flutter/material.dart';
import 'package:desafio_scrol_app_bar/appbar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController _scrollController = ScrollController();

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
          children: <Widget>[
            ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.only(top: 100.0),
              itemCount: 100,
              itemBuilder: (context, int index) {
                return ListTile(
                  title: Text('ITEM ${index}'),
                );
              },
            ),
            CustomAppBar(scrollController: _scrollController,),
          ],
        ),
      );
  }
}