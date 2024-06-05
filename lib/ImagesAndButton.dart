import 'package:flutter/material.dart';

class ImagesAndButton extends StatefulWidget {
  const ImagesAndButton({super.key});

  @override
  State<ImagesAndButton> createState() => _ImagesAndButtonState();
}

class _ImagesAndButtonState extends State<ImagesAndButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () => (print("onPressed")),
                onLongPress: () => (print("OnlongPress")),
                child: Text("Click")),
            ElevatedButton(
                onPressed: () => (print("onPressed")),
                onLongPress: () => (print("OnlongPress")),
                child: Text("Elevator")),

            IconButton(
              onPressed: () => (print("IconButton")),
              icon: Icon(Icons.menu),
            ),
            InkWell(
                onTap: () => print("InkWell"),
                splashColor: Colors.amber,
                highlightColor: Colors.red,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 3,
                  )),
                ),
              ),
              GestureDetector(
                onTap: () => print("gesture detector clicked"),
                onDoubleTapDown: (details) =>
                    print('dobule tap down details: $details'),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 3,
                  )),
                ),
              ),

            // InkWell(
            //   onTap: () => (print("inkwell")),
            //   splashColor: Colors.amber,
            //   highlightColor: Colors.red,
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     decoration: BoxDecoration(
            //       border: Border.all(width:3,)),

            //   ),
            //  GestureDetector(
            //  onTap: () => (print("inkwell")),
            //  onDoubleTapDown: :(details)=>
            //  highlightColor: Colors.red,
            //  child: Container(
            //   width: 100,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     border: Border.all(width:3,)),

            //  ),

            // GestureDetector(
            //    onTap: () => (print("inkwell")),
            //    onDoubleTapDown: ,

            // )
            FadeInImage.assetNetwork(
                placeholder: 'assets/download.jpg',
                image: 'https://picsum.photos/200/200'),
            Image.network('https://picsum.photos/200/200'),
            const Image(
                image: AssetImage('assets/login.png'), width: 100, height: 100),
            //Image.asset('Login.png'),
          ],
        ),
      ),
    );
  }
}
