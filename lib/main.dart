import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SecurityQue',
      theme: ThemeData(
        accentColor: Colors.red,
        primaryColor: Colors.red,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
             image: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
             fit: BoxFit.cover
          )
        ),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('SecurityQue',
              style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white
                      ),),
              Text('always by your side',
              style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white
                      ),),
              RaisedButton(
                  child: Center(
                    child: Text('REGISTER',
                      
                     ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPage1()));
                  }),
              RaisedButton(
                  child: Center(
                    child: Text('LOG IN'),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPage1()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Container(
        
      ),
    );
  }
}
