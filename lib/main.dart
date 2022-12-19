import 'package:flutter/material.dart';
import 'package:instagram/bottom.dart';
import 'package:instagram/post_widget.dart';
import 'package:instagram/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:const HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:const Icon( Icons.camera_alt_outlined,
        size:40,
        color: Colors.black,
        ),
        title:const Text(
          'Instagram',
          style: TextStyle(
            color:Colors.black,
            decoration: TextDecoration.none ),
            ),
            actions: [
              IconButton(
                icon:const Icon(
                  Icons.add_box_outlined,
                  size: 35,color: Colors.black,),
                  onPressed: () {                   
                  },
              ),
              IconButton(
                 icon: const Icon(Icons.send,
                 size: 35,
                 color: Colors.black,),
                 onPressed: () {
                   
                 },)
            ],
      ),
      body:Column(
        children: [StoryWidget(),
       const Divider (color: Colors.grey,),
       const Expanded(child: PostWidget()),
        ],
      ),
      bottomNavigationBar:const BottomBarWidget()
    );
  }
}
