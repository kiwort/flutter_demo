import 'package:flutter/material.dart';


class ScaffoldExample extends StatelessWidget {

  _tapped(){
    debugPrint("alarm Tapped");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.email), onPressed: ()=>debugPrint("Email Tapped")),
            IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapped)
          ],
        ),
            bottomNavigationBar: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
              BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("third")),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("second")),
            ],onTap: (int index)=> debugPrint("tapped item: $index"),),
            backgroundColor: Colors.redAccent.shade100,
            body: Container(
              alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

//            InkWell(
//              child: Text("Tap me",
//              style:TextStyle(fontSize: 23.4),),
//
//              onTap: () =>debugPrint("Tapped...."),
//            )
          ],
        ),
    ),
    );

  }
}
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Hello Agamin"),
        backgroundColor: Colors.amber,);
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("Button"),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      child: Center(
          child: Text(
            "hello flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23.5,
                fontStyle: FontStyle.italic
            ),
          )),
    );
  }
}
