
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
             leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(),
                image:const DecorationImage(image:AssetImage('assets/images/jisung.jpeg'))
              ),
             ),
             title:const Text('jisung_park',style: TextStyle(color: Colors.black),),
             trailing:const Icon(Icons.more_vert),  
          ),
            Container(
              height: 400,
              decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/parkjisung.jpeg')),
              ),
            ),
            ListTile(leading:
             Wrap(
              children:const [
                Icon(Icons.favorite,color: Colors.red,size: 32),
                SizedBox(width: 15,),
                Icon(Icons.comment_outlined,color:Colors.black,size: 32),
                SizedBox(width: 15),
                Icon(Icons.send_outlined,color:Colors.black, size: 32,)
              ],
            ),
            trailing:const Icon(Icons.bookmark_border_outlined,color: Colors.black,size: 35,),
            ),
            Row(
              children:const [
                Padding(
                  padding:EdgeInsets.only(left:18.0),
                  child: Text(
                    '1 040 005 Likes',
                    style: TextStyle(
                      color:Colors.black,fontWeight:FontWeight.w700 ),),
                )
              ],
            ),
            Row(
              children:const [
                Padding(
                  padding: EdgeInsets.only(left:18.0),
                  child:
                   Text(
                    'jisung_park',
                    style: TextStyle(
                      color:Colors.black,fontWeight:FontWeight.bold ),),
                ),
                 Padding(
                  padding: EdgeInsets.only(left:5.0),
                  child:
                   Text(
                    'Waiting for you....',
                    style: TextStyle(
                      color:Colors.black,fontWeight:FontWeight.w400 ),),
                ),
              ],
            ),
             Row(
              children:const [
                Padding(
                  padding:EdgeInsets.only(left:18.0),
                  child: Text(
                    'View all 152367 comments',
                    style: TextStyle(
                      color:Colors.black,
                      fontWeight:FontWeight.w300 ),),
                )
              ],
            ),
            ListTile(
             leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(),
                image:const DecorationImage(image:AssetImage('assets/images/jisung.jpeg'))
              ),
             ),
             title:const Text('Add comment....',style: TextStyle(color: Colors.black),),
             trailing: Wrap(
              children:const [
                Icon(Icons.favorite,color: Colors.red,size: 20),
                SizedBox(width: 15,),
                Icon(Icons.add_circle_outline_outlined,color:Colors.black,size: 20),
                
              ],
            ),  
          ),
         ],
        );
      }
      );
  }
}