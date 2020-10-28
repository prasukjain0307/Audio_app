
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

myMusicApp() {
  audioPlay() {
    var audio = AudioCache();
    audio.play('faded.mp3');
  }
      AudioPlayer audioPlayer = AudioPlayer();
      var mus = AudioCache(fixedPlayer: audioPlayer);
 

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
          ),
        ),
         Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child:Icon(Icons.play_arrow),
                    
                    onPressed: audioPlay,
                    
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






    
  
