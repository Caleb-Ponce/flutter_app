import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

//This screen will display all of the registered buoys as well as provide
//a button to search for new unregistered bluetooth devices
class BuoysScreen extends StatefulWidget {
  @override
  State<BuoysScreen> createState() => _BuoysScreenState();
}




class _BuoysScreenState extends State<BuoysScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterBlue flutterBlue = FlutterBlue.instance;
    // Start scanning
    flutterBlue.startScan(timeout: Duration(seconds: 4));

// Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      print('Scanning');
      for (ScanResult r in results) {
        print('${r.device.name} found! rssi: ${r.rssi}');
      }
    });

// Stop scanning
    flutterBlue.stopScan();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
        body: Container(
          child: Text('Text'),
        ),
    );
  }



}
