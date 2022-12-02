import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BouyDeviceListEntry extends StatelessWidget {
  //final Function onTap;
  final BluetoothDevice buoy;

  BouyDeviceListEntry({required this.buoy});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onTap: onTap,
      leading: Icon(Icons.devices),
      title: Text(buoy.name ?? 'unknown Device'),
      subtitle: Text(buoy.address.toString()),
      trailing: TextButton(
        //onPressed: onTap,
        child: const Text('Conect'),
      ),
    )
  }
}