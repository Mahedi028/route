import 'package:flutter/material.dart';
import 'package:myapp/detailsPage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({ Key? key }) : super(key: key);

  //   LoadingFile(){
  //   Future<String> contentFile=fileDownload();
  // }

  // fileDownload(){
  //   Future<String> result=
  //   Future.delayed(const Duration(seconds: 5), ()=>'Large Latte');
  //   return result;
  // }

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  getData(){
    Future.delayed(Duration(seconds: 5),(){
      print('Show ur name');
    });
    Future.delayed(Duration(seconds: 2),(){
      print('Show ur id');
    });
    print('This is without future');
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  int count=0;


  @override
  Widget build(BuildContext context) {
    print('in widgwt page');
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title:Text(
          'Loading Page',
          style: TextStyle(
            fontSize:25,
            fontWeight: FontWeight.bold,
            color:Colors.black,
             ),
          ) ,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'This is loading page',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                RaisedButton(
                  child: Text(
                    'Click me to next Page',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    
                    ),
                  onPressed: (){
                    //Manuallay
                    // Navigator.push(
                    //   context, MaterialPageRoute(
                    //   builder: (context)=>detailsPage()));
                    Navigator.of(context).pushNamed('/detailsPage');
                  }),
                  FloatingActionButton(
                    child:Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        count++;
                      });

                    })
            ],
          ),
    );
  }
}