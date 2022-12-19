import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
 
List <dynamic> story = [

  {"images" : 'assets/images/jisung.jpeg',"username" : "jisung_park"},
  {"images" : 'assets/images/parkjisung.jpeg',"username" : "nct_dream"},
  {"images" : 'assets/images/aespa.jpeg',"username" : "karina_rina"},
  {"images" : 'assets/images/jaemin.jpeg',"username" : "jaemin_na"},
  {"images" : 'assets/images/twice.jpeg',"username" : "nayeon"},
  {"images" : 'assets/images/ningning.jpeg',"username" : "ningning"},
  {"images" : 'assets/images/ryujin.jpeg',"username" : "ryujin"},
  {"images" : 'assets/images/yeounjun.jpeg',"username" : "yeoujunie"},
  {"images" : 'assets/images/studio.jpeg',"username" : "_megan"},
  {"images" : 'assets/images/winter.jpeg',"username" : "minjon__"},
  {"images" : 'assets/images/ningning.jpeg',"username" : "ningning"},

];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(.0),
                child: Column(
                  children: [
                    Container(
                      width: 67,
                      height: 67,
                      padding:const EdgeInsets.all(3.0),
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter, 
                          colors:[Color(0xFF9B2282),Color(0xFFEEA63)]
                          ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          width: 65,
                          height: 67,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('${story[index]["images"]}'))
                          ),
                          ),                 
                    ),
            ),
                 Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: Text('${story[index]["username"]}'),
                 )
                  ],
                ),
              );
            })),
          ),
        ),
      ],
    );
  }
}