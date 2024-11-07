import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

           children: [

             Text("$num",style: TextStyle(fontSize: 80,color: Colors.black),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FloatingActionButton(onPressed: (){
                  setState(()
                  {
                    if(num==1){
                      num;
                    }else{
                      num--;
                    }
                  });
                  },
                  child: Icon(Icons.remove,color: Colors.black,)
                  ,

                  backgroundColor: Colors.blue,
                ),
                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(onPressed: (){
                  setState(() {

                    num++;

                  });
                },
                  child: Icon(Icons.add,color: Colors.black,)
                  ,
                  backgroundColor: Colors.blue,hoverColor: Colors.black,
                ),
                SizedBox(
                  width: 40,
                ),
                FloatingActionButton(onPressed: (){
                  setState(() {

                    num=0;

                  });
                },
                  child: Icon(Icons.abc,color: Colors.black,)
                  ,
                  backgroundColor: Colors.blue,hoverColor: Colors.black,
                ),
                SizedBox(
                  width: 40,
                ),
              ]



              )
           ],
        ),
      ),
    );
  }
}
