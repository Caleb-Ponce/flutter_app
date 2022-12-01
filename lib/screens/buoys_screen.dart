import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BuoysScreen extends StatefulWidget {
  @override
  State<BuoysScreen> createState() => _BuoysScreenState();
}

class _BuoysScreenState extends State<BuoysScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FlutterBluetoothSerial.instance.requestEnable(),
      builder: (context, future) {
        if(future.connectionState == ConnectionState.waiting){
          return Scaffold(
            body: Container(
              height: double.infinity,
              child: Center(
                child: Icon(
                  Icons.bluetooth_disabled,
                  size: 200.0,
                  color: Colors.blue,
                ),
              ),
            ),
          );
        } else return Home();
      }

    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AppBar(
           title: Text('Connection'),
         ),
//       //body: SelectBondedDevicePage(
      );

  }
 }
