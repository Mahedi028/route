import 'package:flutter/material.dart';
class detailsPage extends StatelessWidget {
  const detailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'DetailsPage',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.yellow
            ),
          )
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'you are in detailsPage',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              
              ),
              RaisedButton(
                
                child: Text(
                  'Go to PreviousPage',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onPressed:(){
                  //Manually route
                  // Navigator.pop(context);
                  Navigator.of(context).pop();
                } ,
                color: Colors.yellow,
                )
            ],
          ),
        ),
    
    );
  }
  }