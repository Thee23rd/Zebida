

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zebida/main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen ({super.key});

  @override
  State <SplashScreen > createState() => _ThewidState();


}

class _ThewidState extends State <SplashScreen>
with SingleTickerProviderStateMixin {
  
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration( seconds:4) ,() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const MyApp(),
      ));

    });

  }

@override
void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }


@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.signal_wifi_4_bar,
              size: 80,
              color: Colors.amber,
              
            ),
            SizedBox(height: 32),
            Text('Zebida',
            style:
             TextStyle(
              fontSize: 60,
             fontStyle: FontStyle.italic,
              color: Colors.amber),
            ),
            
            ]
          
        ),

      ),

    );
  }
}