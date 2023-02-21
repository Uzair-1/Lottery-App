import 'package:flutter/material.dart';
import 'dart:math';

void main() {  // very important concept (every widget itself a tenray operator ?(if ) :(else )
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
//hum variable yaha b bana skta hai
class _MyAppState extends State<MyApp> {
  Random random =Random();  //we create a intense here
  int x=5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Lottery App",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight:FontWeight.w300),),
            centerTitle: true,
            backgroundColor: Colors.blue.withOpacity(.23),
          ),
          backgroundColor: Colors.black12.withOpacity(.10),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child :Text("Lottery Winner Number is <<5>>"),),
              SizedBox(height: 10,),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(15),
                ),
               child: Padding(
                 padding: EdgeInsets.all(10),
                 child: x == 5 ?    //(we set the condition when luck number is exit what interface
                                   // is open )
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Icon(Icons.done_outline_sharp,color: Colors.green,size: 35,),
                     Text("congratulations You Won The Lottery \n Lottery Number is $x \n",textAlign: TextAlign.center,),
                   ],
                 ) : Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.error,color: Colors.redAccent,size: 35,),
                   Text("Better Luck Next Time your Number is $x \n Try Again",textAlign: TextAlign.center,),
                 ],
               ),
               ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
           //  print(random.nextInt(10).toString());  //random number assigned
             x= random.nextInt(10);
             setState(() {

             });
             print(x);
            },
            child: Icon(Icons.refresh,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}

