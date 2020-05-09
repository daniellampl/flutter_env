import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  final String apiUrl;

  MyApp(this.apiUrl);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Environments"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(this.apiUrl),
              SizedBox(height: 15),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text("Fetch"),
                onPressed: () async {
                  await http.get(this.apiUrl + "/test");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
