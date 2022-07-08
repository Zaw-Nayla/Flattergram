// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fluttergram"),
        ),
        body: Container(
          height: 470,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 22, 27, 30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: const [
                          Image(
                            image: AssetImage("images/ava.png"),
                            height: 25,
                            width: 25,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text(
                            "Eddie",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                 child: ClipRRect(
                  borderRadius:BorderRadius.circular(15),
                  child: (const Image(
                    image: AssetImage("images/jinne.jpg"),
                    width: 500,
                  )),
                 )
              ),
              const SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(  
                      child: Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 228, 37, 37),
                          ),
                          Text(" Like     ",
                              style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.comment_rounded,
                            color: Colors.white,
                          ),
                          Text(" Comment",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
