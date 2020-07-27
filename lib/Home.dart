import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
    
}

class _HomeState extends State<Home> {

    int i = 0;
  List<String> question = [
    'There are total of 9 planets in the solar system?',
    'Earth has total of 2 moons?',
    'Jupiter is the largest planet?',
    'Pluto is the second smallest planet?',
    'The name of our galaxy is Milky Way galaxy?',

  ];

  List<bool> answers = [
      true,
      false,
      true,
      false,
      true,
  ];

 List<Widget> traffic = [];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Quiz Apps'),
        backgroundColor: Colors.blue,

      ),
     
      body: Column(
       
        children: <Widget>[
     
         Container(
           child: Text(
             question[i],
           style: TextStyle(
             fontSize: 40.0,
             fontWeight: FontWeight.bold,
             color: Colors.cyan,
           ),),
         ),
         Divider(height: 1.0),
         FlatButton(
           onPressed: (){

          bool correctAnswer = answers[i];
          setState(() {
                     i = i + 1;
                   });

                if(correctAnswer == true){
                   traffic.add(
                     CircleAvatar(
                       radius: 20.0,
                       backgroundColor: Colors.green,
                     )
                   );
                }else{
                  traffic.add(
                     CircleAvatar(
                       radius: 20.0,
                       backgroundColor: Colors.red,
                     )
                   );
                }
                  
           },
           
           child: Text('True'),
           color: Colors.green,
           

         ),
         FlatButton(
           onPressed: (){
                
          bool correctAnswer = answers[i];
          setState(() {
                     i = i + 1;

                   });
                if(correctAnswer == false){
                  traffic.add(
                     CircleAvatar(
                       radius: 20.0,
                       backgroundColor: Colors.green,
                     )
                   );
                }else{
                  traffic.add(
                     CircleAvatar(
                       radius: 20.0,
                       backgroundColor: Colors.red,
                     )
                   );
                }
                  
           },
           
           child: Text('False'),
           color: Colors.red,
           

         ),

         Divider(height:5.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: traffic,
          ),



        ],
        ),
 
      
    );
  }
}