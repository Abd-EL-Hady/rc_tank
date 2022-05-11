import 'package:flutter/material.dart';

class CamPage extends StatefulWidget {
  const CamPage({Key? key}) : super(key: key);

  @override
  State<CamPage> createState() => _CamPageState();
}

class _CamPageState extends State<CamPage> {
  String led = 'Off';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
         actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 0, horizontal: 9),

            child: IconButton(
              icon: const Icon(Icons.flashlight_on_rounded),
              onPressed: () {
                if (led == 'Off') {
                  led = 'On';
                } else {
                  led = 'Off';
                }
                setState(() {});


              },
            ),
          )],
        title: const Text('Camera',textAlign: TextAlign.center),
        shape:  const RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),


    ),

    )));
  }
}
