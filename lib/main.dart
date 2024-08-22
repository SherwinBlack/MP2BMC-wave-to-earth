import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Sherwin's Favorite Album",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Favorite Album"),
              backgroundColor: Colors.blueGrey,
            ),
            body: Builder(builder:(context) => Center (
                child: Column(children: [
              Text(
                'Favorite Song',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              Text(
                'Discover the Music',
                style: TextStyle(fontSize: 20, color: Colors.lightBlue),
              ),

                  Image.network('https://th.bing.com/th/id/OIP.LCfVaIKMTsHW57n0DHXWOAAAAA?rs=1&pid=ImgDetMain',
                  height: 350,

                  ),
                  ElevatedButton(
                      child: Text('Contact Us'),
                      onPressed: ()=> contactUs(context),
                      )
                  ]
            )))));
  }
}//end line

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext){
       return AlertDialog(
           title: Text('Contact Us'),
          content: Text('mail at grc@gamil.com'),
          actions: <Widget>[
            TextButton(
             child: Text('Close'),
             onPressed: () => Navigator.of(context).pop(),

        )
        ],
        );
    }
  );
}
