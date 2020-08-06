
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

myapp() {
  audioPlay() {
    var audio = AudioCache();
    audio.play('faded.mp3');
  }
      AudioPlayer audioPlayer = AudioPlayer();
        var a=AudioCache(fixedPlayer: audioPlayer);
 

  var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    //margin: EdgeInsets.all(10),
    child: Column(
      //alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 500,
          height: 270,
          // color: Colors.amber,

          child:Container(
            decoration: BoxDecoration(
               image: DecorationImage(
            image:NetworkImage(
                    'https://data.whicdn.com/images/235829085/superthumb.jpg?t=1461087281'),
                fit: BoxFit.fill,
              ),
              ),
              
          
        ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade400,
              width: 5,
            ),
          ),

          width:double.infinity,
          height: 50,
          margin: EdgeInsets.all(20),
          //color:Colors.black54,
          child: Center(
            child: Text('Faded',
            style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
          ),//FlatButton.icon(onPressed: mypress, icon: Icon(Icons.play_arrow), label:Text('play'),)//(onPressed: mypress, child: Text('click'),),//Text('hi'),//RaisedButton.icon(onPressed: mypress, icon: Icon(Icons.email) , label: null),
        ),
         Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child:Icon(Icons.play_arrow),
                    
                    onPressed: audioPlay,
                    // (){
                    //  audioPlayer.play("http://api.pendusaab.com/download/128k-nyho/Kaise-Mujhe.mp3");
                    // },
                     ),
                  RaisedButton(
                    
                      child:Icon(Icons.pause),
                       onPressed: (){
                        audioPlayer.pause();
                      },
                  ),
                    RaisedButton(
                      onPressed: () {
                          audioPlayer.stop();
                       },
                      
                        child:Icon(Icons.stop),
                    )
                ],
      ),
      ],
     
    ),
  );
  return MaterialApp(
     debugShowCheckedModeBanner: false,
    // debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Music Play'),
        backgroundColor: Colors.cyan.shade600,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.music_note,
          color: Colors.black,), onPressed: null),
      
          IconButton(icon: Icon(Icons.account_circle,
          color: Colors.black,), onPressed: null),

           IconButton(icon: Icon(Icons.favorite,
          color: Colors.black,), onPressed: null),
           
        ],
      ),
        
      
      backgroundColor: Colors.green.shade200,
      body:mybody,
      
    ),
  );
}	






    
  
